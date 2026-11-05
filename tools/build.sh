#!/usr/bin/env bash
# Build the patched APK from the full apktool project in apktool_src/.
#
#   tools/build.sh            -> dist/NissanDA_revive.apk
#   OUT=/tmp/x.apk tools/build.sh
#
# Environment:
#   APKTOOL_JAR   apktool 2.11.1 jar (default tools/apktool.jar, auto-download)
#   BUILD_TOOLS   Android build-tools dir (default: auto-detect from $ANDROID_HOME)
#   KEYSTORE      signing keystore (default tools/nissan16.keystore)
#   KS_PASS       keystore password (default nissan123)
#   OUT           output apk path (default dist/NissanDA_revive.apk)
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT="${OUT:-$ROOT/dist/NissanDA_revive.apk}"
APKTOOL_JAR="${APKTOOL_JAR:-$ROOT/tools/apktool.jar}"
APKTOOL_URL="https://repo1.maven.org/maven2/org/apktool/apktool-cli/2.11.1/apktool-cli-2.11.1.jar"
KEYSTORE="${KEYSTORE:-$ROOT/tools/nissan16.keystore}"
KS_PASS="${KS_PASS:-nissan123}"
ALIAS="${ALIAS:-nissan16}"

WORK="$(mktemp -d)"
trap 'rm -rf "$WORK"' EXIT

command -v java >/dev/null || { echo "java not found" >&2; exit 1; }

if [[ ! -f "$APKTOOL_JAR" ]]; then
    echo "==> downloading apktool 2.11.1"
    mkdir -p "$(dirname "$APKTOOL_JAR")"
    curl -fsSL -o "$APKTOOL_JAR" "$APKTOOL_URL"
fi

echo "==> apktool b"
java -Xmx2g -jar "$APKTOOL_JAR" b "$ROOT/apktool_src" -o "$WORK/unsigned.apk"

find_build_tools() {
    [[ -n "${BUILD_TOOLS:-}" ]] && { echo "$BUILD_TOOLS"; return; }
    local sdk="${ANDROID_HOME:-${ANDROID_SDK_ROOT:-$HOME/Android/Sdk}}"
    ls -d "$sdk"/build-tools/*/ 2>/dev/null | sort -V | tail -1 | sed 's#/$##'
}
BT="$(find_build_tools || true)"

if [[ -z "$BT" || ! -x "$BT/zipalign" || ! -x "$BT/apksigner" ]]; then
    echo "!! build-tools not found (set BUILD_TOOLS or ANDROID_HOME)" >&2
    echo "   unsigned apk kept at: $WORK/unsigned.apk"
    cp "$WORK/unsigned.apk" "$(dirname "$OUT")/unsigned.apk" 2>/dev/null || true
    exit 1
fi

echo "==> zipalign"
"$BT/zipalign" -p -f 4 "$WORK/unsigned.apk" "$WORK/aligned.apk"

echo "==> apksigner"
[[ -f "$KEYSTORE" ]] || { echo "keystore not found: $KEYSTORE" >&2; exit 1; }
mkdir -p "$(dirname "$OUT")"
"$BT/apksigner" sign --ks "$KEYSTORE" --ks-key-alias "$ALIAS" \
    --ks-pass "pass:$KS_PASS" --key-pass "pass:$KS_PASS" \
    --v1-signing-enabled true --v2-signing-enabled true --v3-signing-enabled true \
    --out "$OUT" "$WORK/aligned.apk"

echo "==> verify"
"$BT/apksigner" verify -v "$OUT" | sed -n '1,6p' | sed 's/^/    /'

echo
echo "done: $OUT"
ls -lh "$OUT" | awk '{print "size  :", $5}'
sha256sum "$OUT" | awk '{print "sha256:", $1}'

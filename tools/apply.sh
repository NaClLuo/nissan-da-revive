#!/usr/bin/env bash
# Build a patched APK from an original copy of the app that you own.
#
#   tools/apply.sh /path/to/da.apk [out.apk]
#
# Environment:
#   PATCHPACK     patchpack zip (default: newest dist/da-revive-patchpack-*.zip,
#                 falls back to downloading it from the latest GitHub release)
#   APKTOOL_JAR   apktool 2.11.x jar (default: tools/apktool.jar, auto-download)
#   BUILD_TOOLS   Android build-tools dir (default: auto-detect from $ANDROID_HOME)
#   KEYSTORE      signing keystore (default: tools/da-revive.keystore, generated)
#   KS_PASS       keystore password (default: darevive)
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BASE="${1:-}"
OUT_APK="${2:-$ROOT/dist/NissanDA_revive.apk}"

if [[ -z "$BASE" || ! -f "$BASE" ]]; then
    echo "usage: tools/apply.sh /path/to/original-da.apk [out.apk]" >&2
    exit 2
fi

APKTOOL_JAR="${APKTOOL_JAR:-$ROOT/tools/apktool.jar}"
APKTOOL_URL="https://repo1.maven.org/maven2/org/apktool/apktool-cli/2.11.1/apktool-cli-2.11.1.jar"
KEYSTORE="${KEYSTORE:-$ROOT/tools/da-revive.keystore}"
KS_PASS="${KS_PASS:-darevive}"
ALIAS="darevive"

WORK="$(mktemp -d)"
trap 'rm -rf "$WORK"' EXIT

need() { command -v "$1" >/dev/null 2>&1 || { echo "missing command: $1" >&2; exit 1; }; }
need java
need unzip
need patch

# ---------------------------------------------------------------- apktool
if [[ ! -f "$APKTOOL_JAR" ]]; then
    echo "==> downloading apktool 2.11.1"
    mkdir -p "$(dirname "$APKTOOL_JAR")"
    curl -fsSL -o "$APKTOOL_JAR" "$APKTOOL_URL"
fi
apktool() { java -Xmx2g -jar "$APKTOOL_JAR" "$@"; }

# ------------------------------------------------------------- patchpack
if [[ -z "${PATCHPACK:-}" ]]; then
    PATCHPACK="$(ls -t "$ROOT"/dist/da-revive-patchpack-*.zip 2>/dev/null | head -1 || true)"
fi
if [[ -z "${PATCHPACK:-}" ]]; then
    echo "==> no local patchpack, fetching the latest release asset"
    mkdir -p "$WORK/dl"
    curl -fsSL -o "$WORK/dl/patchpack.zip" \
        "https://github.com/NaClLuo/nissan-da-revive/releases/latest/download/da-revive-patchpack.zip" \
        || { echo "download failed; run tools/build-patchpack.sh first" >&2; exit 1; }
    PATCHPACK="$WORK/dl/patchpack.zip"
fi
echo "==> patchpack: $PATCHPACK"

# ----------------------------------------------------------------- build
echo "==> decoding base apk"
apktool d -f "$BASE" -o "$WORK/tree" >/dev/null

echo "==> applying smali patch"
patch -p1 -d "$WORK/tree" --no-backup-if-mismatch <"$ROOT/patches/da-revive.patch"

echo "==> dropping in patch classes"
unzip -qo "$PATCHPACK" -d "$WORK/tree/smali"

echo "==> rebuilding"
mkdir -p "$(dirname "$OUT_APK")"
apktool b "$WORK/tree" -o "$WORK/unsigned.apk" >/dev/null

# ------------------------------------------------------------------ sign
find_build_tools() {
    [[ -n "${BUILD_TOOLS:-}" ]] && { echo "$BUILD_TOOLS"; return; }
    local sdk="${ANDROID_HOME:-${ANDROID_SDK_ROOT:-$HOME/Android/Sdk}}"
    ls -d "$sdk"/build-tools/*/ 2>/dev/null | sort -V | tail -1 | sed 's#/$##'
}
BT="$(find_build_tools || true)"

if [[ -n "$BT" && -x "$BT/zipalign" && -x "$BT/apksigner" ]]; then
    echo "==> zipalign + apksigner ($BT)"
    if [[ ! -f "$KEYSTORE" ]]; then
        echo "==> generating keystore $KEYSTORE"
        keytool -genkeypair -keystore "$KEYSTORE" -alias "$ALIAS" \
            -storepass "$KS_PASS" -keypass "$KS_PASS" \
            -keyalg RSA -keysize 2048 -validity 10000 \
            -dname "CN=DA Revive, O=Personal Build, C=CN" >/dev/null 2>&1
    fi
    "$BT/zipalign" -p -f 4 "$WORK/unsigned.apk" "$WORK/aligned.apk"
    "$BT/apksigner" sign --ks "$KEYSTORE" --ks-key-alias "$ALIAS" \
        --ks-pass "pass:$KS_PASS" --key-pass "pass:$KS_PASS" \
        --v1-signing-enabled true --v2-signing-enabled true --v3-signing-enabled true \
        --out "$OUT_APK" "$WORK/aligned.apk"
else
    echo "==> build-tools not found, leaving the apk unsigned: $WORK/unsigned.apk"
    echo "    copy it out manually if you want to sign it elsewhere"
    cp "$WORK/unsigned.apk" "$OUT_APK"
    echo "    (unsigned copy at $OUT_APK)"
fi

echo
echo "done: $OUT_APK"
ls -lh "$OUT_APK" | awk '{print "size:", $5}'
sha256sum "$OUT_APK" | awk '{print "sha256:", $1}'

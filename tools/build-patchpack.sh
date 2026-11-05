#!/usr/bin/env bash
# Compile the patch classes (patch/java) into a drop-in smali pack.
#
# Required environment:
#   ANDROID_JAR   android.jar from any platform >= 26
#   SUPPORT_JAR   support-core-ui-25.3.1/classes.jar (provides ViewPager)
#   SMALI_CP      colon separated classpath holding smali-baksmali + its deps
# Optional:
#   D8            path to d8 (default: d8 on PATH)
#   OUT           output directory (default: <repo>/dist)
#   VERSION       suffix for the zip name (default: UTC date)
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT="${OUT:-$ROOT/dist}"
D8="${D8:-d8}"
JAVAC="${JAVAC:-javac}"
VERSION="${VERSION:-$(date -u +%Y%m%d)}"

: "${ANDROID_JAR:?ANDROID_JAR is not set}"
: "${SUPPORT_JAR:?SUPPORT_JAR is not set}"
: "${SMALI_CP:?SMALI_CP is not set}"

WORK="$(mktemp -d)"
trap 'rm -rf "$WORK"' EXIT

echo "==> javac"
mkdir -p "$WORK/classes"
find "$ROOT/patch/java" -name '*.java' | sort >"$WORK/sources.txt"
"$JAVAC" -nowarn -source 8 -target 8 -encoding UTF-8 \
    -cp "$ANDROID_JAR:$SUPPORT_JAR" \
    -d "$WORK/classes" @"$WORK/sources.txt"

echo "==> d8"
mkdir -p "$WORK/dex"
find "$WORK/classes" -name '*.class' | sort >"$WORK/classfiles.txt"
"$D8" --release --min-api 18 \
    --lib "$ANDROID_JAR" --classpath "$SUPPORT_JAR" \
    --output "$WORK/dex" @"$WORK/classfiles.txt"

echo "==> baksmali"
java -cp "$SMALI_CP" com.android.tools.smali.baksmali.Main \
    d "$WORK/dex/classes.dex" -o "$WORK/smali"

echo "==> zip"
mkdir -p "$OUT"
ZIP="$OUT/da-revive-patchpack-$VERSION.zip"
rm -f "$ZIP"
(cd "$WORK/smali" && zip -qr "$ZIP" com)

echo
echo "built: $ZIP ($(du -h "$ZIP" | cut -f1))"
echo "contents:"
unzip -l "$ZIP" | awk 'NR>3 {print "  " $4}' | grep -v '^  $' | head -20

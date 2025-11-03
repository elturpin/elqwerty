#!/usr/bin/env sh

DIST_DIR=dist
XKB_FILE=${DIST_DIR}/elqwerty.xkb_symbols

mkdir -p ${DIST_DIR}
uvx kalamine build el-qwerty.toml --out ${XKB_FILE}
# Make sure LSGT key is used as an AltGr key
sed -i -e 's/\(key <LSGT> {\[ \)VoidSymbol      , VoidSymbol      ,/\1ISO_Level3_Shift, ISO_Level3_Shift,/' ${XKB_FILE}

OUT_DIR=${DIST_DIR}/xkb

mkdir -p ${OUT_DIR}/rules
mkdir -p ${OUT_DIR}/symbols
cp evdev.xml ${OUT_DIR}/rules
cp ${XKB_FILE} ${OUT_DIR}/symbols/elqwerty
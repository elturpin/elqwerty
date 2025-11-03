#!/usr/bin/env sh

DIST_DIR=dist
INPUT_DIR=${DIST_DIR}/xkb
OUTPUT_DIR=${HOME}/.config/xkb

mkdir -p ${OUTPUT_DIR}
cp -r ${INPUT_DIR}/* ${OUTPUT_DIR}/

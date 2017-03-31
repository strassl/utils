#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

# Extract list of pages from pdf
# extract_pages_from_pdf.sh input.pdf output.pdf 1 2 3 4

INPUT=$1
OUTPUT=$2
shift 2

pdftk "$INPUT" cat "$@" output "$OUTPUT"

#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

# Remove backgrounds from pdfs, requires cpdf
# clean_pdf.sh sample.pdf

cpdf -draft "$1" -o "clean_$1"

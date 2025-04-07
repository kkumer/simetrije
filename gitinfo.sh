#!/bin/bash

# Get short commit hash
HASH=$(git rev-parse --short HEAD)

# Get tag (if any) on HEAD
TAG=$(git describe --tags --exact-match 2>/dev/null || echo "none")
#
# # Get commit date in YYYY-MM-DD format
DATE=$(git show -s --format=%cd --date=format:'%Y-%m-%d' HEAD)

# Write to gitinfo.tex
echo "% Auto-generated by gitinfo.sh" > gitinfo.tex
echo "\\newcommand{\\githash}{$HASH}" >> gitinfo.tex
echo "\\newcommand{\\gittag}{$TAG}" >> gitinfo.tex
echo "\\newcommand{\\gitdate}{$DATE}" >> gitinfo.tex

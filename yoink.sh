#!/bin/bash

# URL of the webpage you want to download
URL="https://cruip.com/demos/stellar/"

# Directory where you want to save the downloaded files
DOWNLOAD_DIR="static/"

# Use wget to recursively download the webpage and its assets
wget \
  --recursive \
  --page-requisites \
  --no-clobber \
  --html-extension \
  --convert-links \
  --restrict-file-names=windows \
  --domains example.com \
  --no-parent \
  --directory-prefix="$DOWNLOAD_DIR" \
  "$URL"

# Notify when the download is complete
echo "Download completed. Files saved in $DOWNLOAD_DIR"

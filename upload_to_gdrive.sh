#!/bin/bash
# Upload build to Google Drive using gdrive (https://github.com/prasmussen/gdrive)
# Usage: ./upload_to_gdrive.sh lineage/out/target/product/joan/lineage-*.zip

FILE=$1
if [[ ! -f "$FILE" ]]; then
  echo "File not found: $FILE"
  exit 1
fi

# Replace with your GDrive folder ID
FOLDER_ID="your_folder_id_here"

echo "Uploading $FILE to Google Drive folder ID $FOLDER_ID..."
gdrive upload --parent "$FOLDER_ID" "$FILE"

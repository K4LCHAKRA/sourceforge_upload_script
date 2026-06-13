#!/bin/bash

read -p "Enter SourceForge Web URL: " SF_URL
read -p "Enter SourceForge username: " USER
read -p "Enter file name: " FILE

# Extract project name and path after /files/
PROJECT=$(echo "$SF_URL" | sed -E 's#https?://sourceforge.net/projects/([^/]+)/files/.*#\1#')
PATH_PART=$(echo "$SF_URL" | sed -E 's#https?://sourceforge.net/projects/[^/]+/files/([^?]*)#\1#' | sed 's#/$##')

UPLOAD_PATH="/home/pfs/project/${PROJECT}/${PATH_PART}"

CMD="scp \"$FILE\" ${USER}@frs.sourceforge.net:${UPLOAD_PATH}/"

echo
echo "Generated command:"
echo "$CMD"
echo

read -p "Execute upload? (y/n): " CONFIRM

if [[ "$CONFIRM" =~ ^[Yy]$ ]]; then
    eval "$CMD"
fi

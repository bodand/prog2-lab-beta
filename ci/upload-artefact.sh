#!/usr/bin/env sh

filename=$1
type=$2
if [ -z "$type" ]; then
  type="application/octet-stream"
fi

GH_REL_ID=$(cat draft_id)
echo "Uploading to release id ${GH_REL_ID}..."
curl -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer ${GITHUB_TOKEN}" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  -H "Content-Type: $type" \
  "https://uploads.github.com/repos/bodand/prog2-lab-beta/releases/${GH_REL_ID}/assets?name=$filename" \
  --data-binary "@$filename"

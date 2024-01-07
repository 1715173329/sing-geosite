#!/bin/bash

set -e -o pipefail

mkdir -p release
cd release
git init
git config --local user.email "<41898282+github-actions[bot]@users.noreply.github.com>"
git config --local user.name "github-actions[bot]"
git remote add origin "https://github-action:$GITHUB_TOKEN@github.com/$GITHUB_REPOSITORY.git"
git branch -M release
cp ../*.db ../*.sha256sum .
git add .
git commit -m "Updated at $(date '+%Y%m%d%H%M%S')"
git push -f origin release

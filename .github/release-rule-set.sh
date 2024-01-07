#!/bin/bash

set -e -o pipefail

function releaseRuleSet() {
    dirName=$1
    pushd $dirName
    git init
    git config --local user.email "<41898282+github-actions[bot]@users.noreply.github.com>"
    git config --local user.name "github-actions[bot]"
    git remote add origin "https://github-action:$GITHUB_TOKEN@github.com/$GITHUB_REPOSITORY.git"
    git branch -M $dirName
    git add .
    git commit -m "Updated at $(date '+%Y%m%d%H%M%S')"
    git push -f origin $dirName
    popd
}

releaseRuleSet rule-set
releaseRuleSet rule-set-unstable

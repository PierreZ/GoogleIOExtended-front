#!/bin/bash

GH_REPO="@github.com/PierreZ/GoogleIOExtended-front.git"

FULL_REPO="https://$GH_TOKEN$GH_REPO"

cd dist
git init
git config user.name "travis-auto"
git config user.email "travis"

git add -A
git commit -m "deployed to github pages"
git push --force --quiet $FULL_REPO HEAD:gh-pages

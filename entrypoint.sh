#!/bin/bash

echo "========================="

#git configurations and allowing safe.directory
git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global -add safe.directory /github/workspace

#python file call
python3 /usr/bin/feed.py

git add - A && git commit -m "Update Feed"
git push --set-upstream origin main


echo "========================="
#!/bin/bash

APIKEY="$1"
BRANCH_NAME="update-ci-config"
COMMIT_MESSAGE="Update .circleci/config.yml"

git clone git@github.com:chaordic/theme-"${APIKEY}"
cd theme-"${APIKEY}"
git checkout -b "${BRANCH_NAME}"
rm .circleci/config.yml
cp ../config.yml .circleci/
git add .
git commit -m "${COMMIT_MESSAGE}"
git push origin "${BRANCH_NAME}"
cd ..
rm -rf theme-"${APIKEY}"

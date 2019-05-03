#!bin/bash
APIKEY="$1"
BRANCH_NAME="update-ci-config"
git clone git@github.com:chaordic/theme-"${APIKEY}"
cd theme-"${APIKEY}"
git checkout -b "${BRANCH_NAME}"
rm .circleci/config.yml
cp ../config.yml .circleci/
git add .
git commit -m "Update .circleci/config.yml"
git push origin update-ci-config

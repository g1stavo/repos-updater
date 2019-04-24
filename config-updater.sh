#!bin/bash
APIKEY="$1"
git clone git@github.com:chaordic/theme-"${APIKEY}"
cd theme-"${APIKEY}"
git checkout -b update-ci-config
rm .circleci/config.yml
cp ../config.yml .circleci/
git add .
git commit -m "Update .circleci/config.yml"
git push origin update-onsite
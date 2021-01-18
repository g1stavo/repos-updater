#!/bin/bash

source update.config

REPOSITORY="$1"

git clone git@github.com:"${AUTHOR}"/"${REPOSITORY}"
cd "${REPOSITORY}"
git checkout -b "${BRANCH}"

rm "${FILE_PATH}"
cp ../"${NEW_FILE_PATH}" "${FILE_PATH}"

git add "${FILE_PATH}"
git commit -m "${COMMIT_MESSAGE}"
git push origin "${BRANCH}"

cd ..
rm -rf "${REPOSITORY}"
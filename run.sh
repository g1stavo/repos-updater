#!/bin/bash

source update.config

IFS=', ' read -r -a REPOS <<< "$REPOS"

HAS_FILE=()
function hasFile() {
    STATUS=$(curl -s \
        -o /dev/null \
        -w "%{http_code}" \
        -H "Accept: application/vnd.github.v3+json" \
        -H "Authorization: token "${TOKEN}"" \
        https://api.github.com/repos/"${AUTHOR}"/"$r"/contents/"${FILE_PATH}")
    if [[ $STATUS -eq "200" ]] ; then
        HAS_FILE+=("$r")
    fi
}

for r in "${REPOS[@]}" ; do hasFile ; done
for hf in "${HAS_FILE[@]}" ; do ./update.sh $hf >> update.log 2>&1 ; done

function shutdown() {
    for r in "${REPOS[@]}" ; do
        OUTPUT+=("https://github.com/"${AUTHOR}"/"$r"/pull/new/"${BRANCH}"")
    done
    echo "Check your log execution at update.log."
    echo "If everything's fine, you should be able to create the following pull requests:"
    for o in "${OUTPUT[@]}" ; do
        echo "$o"
    done
}

shutdown
#!/bin/bash
#set -x

function exit_test {
  if [ $? -ne 0 ]; then
    echo "Command failed: Terminating";
    exit 128;
  fi
}

REPO_URL="git@github.com:overwatchftw/boo.git"
CUR_DATE=`date +%F-%H-%M-%S`
CUR_BRANCH=`git rev-parse --abbrev-ref HEAD`

MESSAGE="Pushing new tag: $CUR_DATE"

git tag -a $CUR_DATE -m "Adding new timestamp tag"
exit_test
sleep 1

if [ $# -gt 0 ]
  then
    EXTRA_TAG=$1
    git tag -a $EXTRA_TAG -m "Adding optional CLI tag"
    exit_test
    MESSAGE="Pushing new tags: $CUR_DATE, $EXTRA_TAG"
fi

echo "===================================================="
echo -e $MESSAGE
echo "===================================================="

git push origin --tags --quiet
exit_test

echo "======"
echo " DONE"
echo "======"

echo "Current tags:"
echo "-------------------------"
git tag
echo "-------------------------"
exit_test


#echo "repo_url = $REPO_URL"
#echo "cur_date = $CUR_DATE"
#echo "cur_branch = $CUR_BRANCH"
#echo "extra_tag = $EXTRA_TAG"

exit 0

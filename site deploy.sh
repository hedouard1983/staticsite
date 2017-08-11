#!/bin/sh
echo "[log] $0"
export GIT_WORK_TREE="/full/path/to/Site/my_static_site"
export BRANCH="master"
while read oldrev newrev refname
do
    echo "[log] oldrev: $oldrev"
    echo "[log] newrev: $newrev"
    echo "[log] refname: $refname"
    echo "[log] deploying to $GIT_WORK_TREE with $BRANCH"
    git checkout -f $BRANCH
done

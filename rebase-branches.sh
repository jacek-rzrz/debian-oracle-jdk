#!/bin/bash

git branch | grep -v master | tr -d " *" | while read BRANCH
do
  git checkout $BRANCH
  git rebase master
done

#!/bin/bash
DATE=`date '+%F%H%M%S'`;
FOLDERNAME="TEMP"$DATE
echo "------ Folder name will be -> "$FOLDERNAME

git clone "https://github.com/coderbyte-org/big-o" "$FOLDERNAME"
cd $FOLDERNAME

echo "------ Check that we are in the correct path"
pwd
echo "------ List all files"
ls

echo "------ Create a new feature branch"
git checkout -b 'feature-branch-2'

echo "------ Create a new file __test__.txt"

cat > '__test__.txt' <<- EOM
  test content
EOM

echo "------ List all files again to check the new file"
ls -la

echo "------ Check file content for __test__.txt"
cat __test__.txt

echo "Print Git Status"
git status



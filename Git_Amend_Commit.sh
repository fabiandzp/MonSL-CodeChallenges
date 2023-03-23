#!/bin/bash
DATE=`date '+%F%H%M%S'`;
FOLDERNAME="TEMP"$DATE
echo "------ Folder name will be -> "$FOLDERNAME

git clone "https://github.com/coderbyte-org/big-o" "$FOLDERNAME"
cd $FOLDERNAME

echo "------ Check that we are in the correct path"
pwd

echo "------ Create a new feature branch"
git checkout -b 'docs/add-new-file'

echo "------ check current branch"
git status

echo "------ Create a new file"
cat > 'FabianZabala_NewFile.txt'

echo "------ Add a new file to Staging"
git add "FabianZabala_NewFile.txt"
git status

echo "------ First commit with the wrong message"
git commit -m "docs: add new fill"
git status

echo "------ The message commit amended"
git commit --amend -m "docs: add new file"
git reflog -3

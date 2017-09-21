#!/bin/sh
PATTERN="export PATH=\${HOME}/bin:\$PATH"
FILE=${HOME}/.bashrc
if grep -Fxq "$PATTERN" $FILE
then
echo "Edit already made"
else
echo "Re-writing .bashrc"
echo "$PATTERN" >> $FILE
fi

#!/bin/sh
PATTERN="export PATH=\${HOME}/bin:\$PATH"
if grep -Fxq "$PATTERN" ${HOME}/.bashrc
then
echo "Edit already made"
else
echo "Re-writing .bashrc"
echo "$PATTERN" >> ${HOME}/.bashrc
fi

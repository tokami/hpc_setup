#!/bin/sh

## Modify Makefile
FILE=Makefile

grep ^[^\ ]*: $FILE > tmp1

sed s/:.*//g tmp1 > tmp2

##paste -d"\n\t$(MAKE) " tmp1 tmp2
paste tmp1 tmp2 > tmp3

echo FILE=$FILE > $FILE.tmp
echo >> $FILE.tmp

sed 's/\t/\n\t$(MAKE) -f $(FILE) /g' tmp3 >> $FILE.tmp

# This can be done using grep:
#
# $ cat input.txt | grep --no-group-separator -B 1 '^[^C]'
#
# In other words, print any line that doesn't contain C at the start, as well as the previous line [but don't duplicate printed lines]. 

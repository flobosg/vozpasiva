#!/bin/bash
 
if [ "$1" = "" ]; then
 echo "Modo de uso: `basename $0` <archivo> ..."
 exit
fi
 
egrep -n -i --color \
 "\\b(es|era|fue|será|sería|sido|sea|fuera|fuese|fuere|fueron)\
\\b[ ]*(\w+ados?|\w+adas?|\w+idos?\w+idas?|\w+ídos?\w+ídas?)\\b" $*
 
exit $?

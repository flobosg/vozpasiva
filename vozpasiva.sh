#!/bin/bash
 
if [ "$1" = "" ]; then
 echo "Modo de uso: `basename $0` <archivo> ..."
 exit
fi
 
egrep -n -i --color \
 "\\b(es|era|fue|será|sería|sido|sea|fuera|fuese|fuere)\
\\b[ ]*(\w+ado|\w+ada|\w+ido\w+ida|\w+ído\w+ída)\\b" $*
 
exit $?

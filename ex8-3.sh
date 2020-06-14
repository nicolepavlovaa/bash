if test $# -eq 2
then
 if test -d $1
 then
  num=$(ls -F $1 | grep -v / | wc -c)
  us=$(who -u | grep $1 | wc -l)
  if test $us -gt 0
  then echo $num | write $2
  fi
 else echo directory doesnt exist
 fi
else echo wrong number of params
fi

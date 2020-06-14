if test $# -eq 2
then
 if test -f $1 -a -f $2
 then
  temp=t
  mv $1 t
  mv $2 $1
  mv t $2
 else echo files dont exist
 fi
else echo wrong number of parameters
fi

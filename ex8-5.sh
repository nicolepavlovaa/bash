if test $# -eq 2 -o $# -eq 3
then
 if test -d $1 -a -d $2
 then
  str=s
  if test $# -eq 2
  then str=$(cat c1)
  elif test $# -eq 3
  then str=$3
  fi
  if test $(ls | grep ".*\.c" | wc -l) -gt 0
  then mv *.c $1
  fi
  if test $(ls | grep ".*\.out" | wc -l) -gt 0
  then mv *.out $2
  ls -l | wc -l
  fi
 else echo direcotries dont exist
 fi
else echo wrong number of paramters
fi
 #grep '\.c'= grep ".*\.c"
 #grep "f.*\.c"

if test $# -ge 2
then 
 echo aaa
 if test -d $1 -a -d $2
 then
  mv *.c $1
  mv *.out $2
  echo $(ls -l | wc -l)
  if test $# -eq 3
  then
   if test ! -d $3
   then mkdir $3
   else echo already exists
   fi
  elif test $# -eq 2
  then 
   a=$(cat c1)
   mkdir $a
  fi
 else echo not directories 
 fi
else echo wrong number of parameters
fi

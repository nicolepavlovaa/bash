if test $# -eq 3
then 
 echo aa
 if test -d $1 -a -d $2
 then 
  mv *.c $1
  mv *.out $2
  ls -l | wc -l 
 else echo not directories
 fi
elif test $# -eq 2
then echo vvv
 if test -d $1 -a -d $2
 then 
  mv *.c $1
  mv *.out $2
  ls -l | wc -l 
 else echo not directories
 fi
else echo wrong number of parameters
fi

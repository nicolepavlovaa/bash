if test $# -eq 2
then
 if test -d $1 -a -d $2
 then 
  first=$(ls $1 | grep "\.c")
  second=$(ls $2 | grep "\.c")
  f1=$(ls $1 | grep "\.c" | wc -l)
  f2=$(ls $2 | grep "\.c" | wc -l)
  echo $f1
  echo $f2
  number=$(expr $f1 + $f2)
  if test $number -ge 20
  then 
   for i in $first
   do cat $1/$i >> sources.txt
   done
   for j in $second
   do cat $2/$j >> sources.txt
   done
   chmod 0444 sources.txt
  else echo number of such files $number
  fi
 else echo not directories
 fi
else echo wrong number of params
fi

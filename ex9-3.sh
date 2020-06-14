if test $# -gt 1
then
 if test -f $1
 then
  read msg
  cp $1 temp
  echo $msg >> temp
  for i in $(who -u | cut -d ' ' -f 1)
  do 
   if test $(echo $* | grep $i | wc -w) -gt 0
   then 
    write $i < temp
   fi
  done
  rm temp
 else echo filee doesnt exist
 fi
else echo not enough parameters
fi

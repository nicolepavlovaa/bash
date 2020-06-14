if test $# -ge 2
then
 if test -f $1
 then 
  for i in $*
  do 
   user=$(who | grep $i | cut -d ' ' -f 1 | wc -l)
   term=$(who | sort -k3 -n | grep $i | cut -d ' ' -f 6 | head)
   content=$(cat $1)
    if test $user -ge 1 
    then
     echo $content | write $i $term
    fi
  done
 else echo filee doesnt exist
 fi
else echo not enough args
fi

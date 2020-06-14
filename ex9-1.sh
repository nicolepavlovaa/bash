if test $# -eq 2
then 
 if test -d $1
 then 
  for i in $(ls $1)
  do 
   if test ! -d $i
   then 
    size=$(wc -c $1/$i | cut -d ' ' -f1)
    if test "$size" -gt "$2"
    then echo $i
    fi
   fi
  done
 else echo directory does not exist
 fi
else echo wrong number of parameters
fi

if test $# -eq 2
then
 if test -d $1 -a -d $2
 then
  if test $(ls $1 | grep ".txt" | wc -l) -gt $(ls $2 | grep ".txt" | wc -l)
  then 
   read dir3
   mkdir $dir3
   filestomove=$(ls -l --file-type $1 | grep -v / | grep "rw-rw-rw-" | rev | cut -d ' ' -f 1 | rev)
   echo $filestomove
   for i in $filestomove
   do mv $1/$i $dir3
   done
  else echo there are lesss txt files
  fi
 else echo directories dont exist
 fi
else echo wrong number of parameters
fi

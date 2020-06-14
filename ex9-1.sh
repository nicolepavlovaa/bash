if test $# -eq 2
then
 if test -d $1
 then 
  files=$(ls --file-type $1 | grep -v /)
  for i in $files
  do
   filesize=$(wc -c $1/$i | cut -d ' ' -f 1)
   if test $filesize -ge $2
   then echo $i
   fi
  done
  else echo directory doesnt exist
 fi
else echo wrong number of parameters
fi


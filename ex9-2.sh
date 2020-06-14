if test $# -eq 2
then
 if test -d $1 -a -d $2
 then 
  echo directoriesss
  echo $(ls -F $1 | grep -v /)
  n1=$(ls -F $1 | grep -v / | grep -E "*\.txt" | wc -l)
  n2=$(ls -F $2 | grep -v / | grep -E "*\.txt" | wc -l)
  echo $n1 $n2
  if test $n1 -gt $n2
  then 
   read dir3
   mkdir $dir3
   files=$(ls -lF | grep -v / | grep -E "\-rwxrwxrwx*" | rev | cut -d ' ' -f 1 | rev)
   echo $files
   mv $files $dir3
  fi
 else echo these are not both directories
 fi
else echo Wrong number of parameters
fi

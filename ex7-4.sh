if test $# -eq 2
then
 if test -f $1
 then
  cat $1 | tee copy-1 copy-2 copy-3
  grep "$2" $1 
  read name
  grep "$2" $1 | wc -l > $name
  mv $name ~/Desktop/mydirectory
 else filee does not exist
 fi
else echo wrong number of paramters
fi

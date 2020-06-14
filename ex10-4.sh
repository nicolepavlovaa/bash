if test $# -eq 1
then
 if test -d $1
 then 
  files=$(ls -F $1 | grep "\.c")
  for i in $files
  do
   name=$(echo $i | cut -d '.' -f 1)
   gcc $1/$i -o $name &
  done
 else echo not a directory
 fi
else echo not enough args
fi

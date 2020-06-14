if test $# -eq 1
then
 if test ! -d $1
 then mkdir $1
 fi
 files=$(ls -lF | grep -v / | grep -E "\-rw\-rw\-r.\-*" | rev | cut -d ' ' -f 1 | rev)
 for f in $files
 do cp $f $1
 done
 echo $(ls -l | wc -l)
else echo wrong number of parameters
fi

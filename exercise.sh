if test $# -gt 2
then
  read str
  num=0
  if test $(who -uT | grep $1 | wc -l) -gt 0
  then
    for i in $*
    do
      if test -f $i
      then
        currnum=$(grep $str $i | cut -d ' ' -f 1 | wc -l)
        num=$(expr $num + $currnum)
      fi
    done
    for f in $*
    do
     if test -f $f
     then
      if test $(ls -l $f | grep "rw-rw-rw-" | wc -l) -gt 0
      then mv $f c_sources
      fi
     fi
    done
    echo $(expr $2 - 2) $num | write $1
  fi
else echo not enough parameters
fi

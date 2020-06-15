if test $# -gt 0
then
  read str
  for i in $*
  do
    if test $(who -u | grep $i | wc -l) -gt 0
    then echo $str | write $i
    fi
  done
else echo wrong num of parameters
fi

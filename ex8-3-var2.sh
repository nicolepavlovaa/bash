if test $# -eq 2
then
  if test -d $1
  then
    num=$(cat $1/* 2> err.txt | wc -c)
    if test $(who -u | grep $2 | wc -l) -gt 0
    then
      echo $num
      echo $num | write $2
    fi
  fi
else echo not enough parameters
fi

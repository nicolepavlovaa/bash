if test $# -gt 1 -a -f $1
then
  read msg
  content=$(cat $1)
  for i in $*
  do
    if test $(who -u | cut -d ' ' -f 1 | grep $i | wc -l) -gt 0
    then echo $msg $content | write $i
    fi
  done
else echo wrong parameters
fi

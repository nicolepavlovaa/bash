if test $# -eq 1
then
  size=0
  val=$(find . -group nikol)
  for i in $val
  do size=$(expr $size + $(wc -c $i 2> /dev/null | cut -d ' ' -f 1))
  done
  echo $size | write nikol
else echo wrong num of parameters
fi

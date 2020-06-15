if test $# -eq 3
then
  if test -d $1 -a -f $3
  then
    name=$(cat $3 | head -n 3 | tail -n 1 | cut -c1-6)
    echo $name
  else echo dont exist
  fi
  echo $(find $1 -name $name -user $2 | wc -l)
else echo wrong num of parameters
fi

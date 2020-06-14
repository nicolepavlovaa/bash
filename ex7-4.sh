if test $# -eq 2
then
 if test -f $1
 then
  for i in {1,2,3}; do cp $1 copy$i; done
  grep $2 $1
  read result
  grep $2 $1 | wc -l | cat > $result
  mv $result ~/Desktop/home
 else This filee does not exist
 fi
else echo wrong number of parameters
fi

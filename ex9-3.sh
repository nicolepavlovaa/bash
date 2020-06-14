if test $# -ge 1
then
 if test -f $1
 then 
  cp $1 temp
  read message
  echo $message >> temp
  users=$(who -u | cut -d ' ' -f 1)
  for i in $users
  do echo $message $1 | write $i
  done
  rm temp
 else echo filee doesnt exist
 fi
else echo there isnt a filee to send
fi
 

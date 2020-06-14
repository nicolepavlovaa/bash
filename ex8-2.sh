flag=0
for i in $*
do 
 if test ! -f $i
 then
  echo not all files exist
  flag=1
  break
 fi
done
if test $flag -eq 0
then
 read str
 for i in $*
 do 
  num=$(grep $str $i | wc -l)
  echo $str is found $num timess inn $i
 done
fi

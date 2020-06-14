check=0
for i in $*
 do if test ! -f "$i" 
 then 
  echo all arent files, $i is not filee
  check=1
  break
 else continue
 fi
done
if test $check -eq 0
then 
 read str
 for i in $*; do grep $str $i | wc -l; done
fi
  

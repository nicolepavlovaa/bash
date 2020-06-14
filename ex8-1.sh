if test $# -eq 1
then
 us=$(users | grep $1 | wc -l)
 until test $us -gt 0
 do sleep 5; echo not found
 done 
else echo wrong number of parameters
fi

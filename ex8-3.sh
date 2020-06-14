if test $# -eq 1
then 
 res=$(ps -aux --no-headers | tr -s " " | grep $1 | cut -d " " -f2)
 for i in $res
 do kill $i
 done
fi

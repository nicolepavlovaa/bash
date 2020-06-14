if test $# -eq 1
then
 echo $(ps -aux | cut -d ' ' -f 1,2 | grep -w $1 | wc -l)
 processes=$(ps -aux --no-headers | tr -s ' ' | cut -d ' ' -f 1,2 | grep -w '$1' | cut -d ' ' -f 2)
 for i in $processes
 do echo $i
 done
else echo wrong num of params
fi

if test $# -eq 1
then
 until who | grep $1 > /dev/null; do sleep 5; done
else echo wrong number of params
fi

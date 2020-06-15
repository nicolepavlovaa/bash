if test $# -eq 2 -o $# -eq 3
then
  if test -d $1 -a -d $2
  then
   str=s
   if  test $# -eq 2
   then str=$(cat $str.txt)
   else str=$3
   fi
   cfiles=$(ls | grep "\.c")
   mv $cfiles $1
   outfiles=$(ls | grep "\.out")
   mv $outfiles $2
   echo "number of files not moved $(ls | wc -l)"
   if test ! -d $str
   then mkdir $str
   fi
   echo $outfiles >> $str/names
   echo $cfiles >> $str/names
 else echo directories dont exist
 fi
else echo wrong num of parameters
fi

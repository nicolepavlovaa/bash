read a
x=123
echo $x
str='this contains intervals'
str2="this does not"
echo $str
echo $str2
str3="this is $a"
str4='this is $a'
echo $str3
echo $str4
count=$(who | wc -l)
echo $count
name=$(whoami)
helper=$(ps au | grep $(whoami))
num=$(ps au | grep $(whoami) | wc -l)
echo $name
echo $num
echo $helper
expr 2 + 1
x1=5
expr 2 + $x1
expr 10 - $x
c=$(expr $a - $x1)
c1=$(expr 15 + $x)
echo $c
echo $c1
ls -al
expr 3 - $x
val=$(expr 13 - $x)




#1
read a1 a2
echo "sum:" $(expr $a1 + $a2)
echo "product:" $(expr $a1 \* $a2)
#2
ps -aux | grep '/man'
#3
ls -al | grep rw-r--r-- | cut -c45-80
#4
read user1 user2
who -u | grep -vw $user1 | grep -vw $user2  | wc -l
#5
ls -l | grep ".*\.c" | wc -l
#6
read f1 f2 f3
wc -c $f1 $f2 $f3 | grep -ow [0-9]* | cat > size.txt
for f in $f1 $f2 $f3; do echo -n $f | wc -c | cat >> len.txt; done

read f1 f2 f3
echo -n $f1 | wc -c >> len.txt
echo -n $f2 | wc -c >> len.txt
echo -n $f3 | wc -c >> len.txt

wc -c f1 >> size.txt
wc -c f2 >> size.txt
wc -c f3 >> size.txt
 
#7
read str1
expr index "$str1" a
expr substr "$str1" 5 10





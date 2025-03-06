Q) write a shell script to get,time,username and current working direcrory

#!/bin/bash

echo $(date)

echo "user name:"
echo $(whoami)
echo "current working directory"
echo $(pwd)
-------------
[mca@localhost pg2]$ vi pr.sh
[mca@localhost pg2]$ chmod +x pr.sh
[mca@localhost pg2]$ ./pr.sh

Thu Mar 6 10:38:45 AM IST 2025
user name:
mca
current working directory
/home/mca/jasir/pg2

Q)write a shell script to find factorial

#!/bin/bash

echo "Enter the number :"
read Number
fact=1

for ((i=1;i<=$Number;i++))
do
        fact=$((i*fact))
done
echo "The factorial of $Number is $fact"
-------------
[mca@localhost pg2]$ vi factorial.sh
[mca@localhost pg2]$ chmod +x factorial.sh
[mca@localhost pg2]$ ./factorial.sh
Enter the number :
5
The factorial of 5 is 120

Q)write a shell script to find fibonacci series

#!/bin/bash

array=(0 1)
echo "Enter the Number:"
read Number

for((i=2;i<=$Number;i++))
do
        array[i]=$((${array[i-1]} + ${array[i-2]}))
done

echo ${array[@]}

------------------

[mca@localhost pg2]$ vi factoria.sh
[mca@localhost pg2]$ chmod +x factoria.sh
[mca@localhost pg2]$ ./factoria.sh

Enter the Number:
5
0 1 1 2 3 5

Q)write a shell script to find the prime number between 50 to 100

#!/bin/bash

for ((i=50; i<=100; i++))
do
    prime=1
    for ((j=2; j*j<=i; j++))
    do
        if (( i % j == 0 ));
        then
            prime=0
            break
        fi
    done

    if (( prime == 1 ));
    then
        echo $i
    fi
done

----------------------
[mca@localhost pg2]$ vi prime.sh
[mca@localhost pg2]$ chmod +x prime.sh
[mca@localhost pg2]$ ./prime.sh
53
59
61
67
71
73
79
83
89
97

Q) write a shell script to a number in reverse order

#!/bin/bash

echo "Enter the number:"
read n
tmp=0
while [ $n -gt 0 ]
do
        tmp=$((tmp * 10 + (n % 10)))
        n=$((n / 10))
done
echo "the reverse of the number:"
echo $tmp

-----------------------
[mca@localhost pg2]$ vi reverse.sh
[mca@localhost pg2]$ chmod +x reverse.sh
[mca@localhost pg2]$ ./reverse.sh
Enter the number:
123
the reverse of the number:
321

#!/bin/bash
echo "Enter the first number"
read num1
echo "Enter the second number"
read num2
echo "Enter the operator + to add or - to subract or * to multiply or / to division or % for remainder"
read opp
case $opp in
	'+')sum=`expr $num1 + $num2`
		echo "The sum of two number is $sum"
		;;
	'-')sub=`expr $num1 - $num2`
		echo "The subraction of two number is $sub"
		;;
	'*')mult=`expr $num1 \* $num2`
		echo "The multiplication of two number is $mult"
		;;
	'/')if [ $num2 -gt 0 ]
	then
		div=`expr $num1 / $num2`
		echo "The division of two value is $div"
	else
		echo "The division of two value is infinity"
	fi
		;;
	'%')rem=`expr $num1 % $num2`
	echo "The remainder of two value is $rem"
		;;
	*)echo "Invalid symbol!!! enter valid symbol + or - or / or * or %"
esac

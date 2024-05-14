echo "==========FIBONACCI SERIES=========="
echo "Enter first number"
read num1
echo "Enter second number"
read num2
echo "Enter number of series wanted ?"
read counter
sum=0

while [ $counter -lt 3 ] 
do
	echo "Pls enter series value more than 2"
	read counter
done

echo $num1
echo $num2

while [ $counter -gt 0 ] 
do
	sum=$((num1+num2))
	echo $sum
	num1=$num2
	num2=$sum
	((counter--))
done

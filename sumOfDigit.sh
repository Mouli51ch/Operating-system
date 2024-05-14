echo "Enter number"
read num
sumOfDigit=0
while [ $num -gt 0 ] 
do
	digit=$((num%10))
	sumOfDigit=$((sumOfDigit+digit))
	num=$((num/10))
done	

echo $sumOfDigit

echo "===========ARMSTRONG PROGRAM============"
echo "Enter number"
read num
numOfDigit=0
tempNum=$num
totalSum=0


while [ $tempNum -gt 0 ] 
do 
	((numOfDigit++))
	tempNum=$((tempNum/10))
done

tempNum=$num

while [ $tempNum -gt 0 ] 
do 
	digit=$((tempNum%10))
	digitCube=$((digit**numOfDigit))
	totalSum=$((digitCube+totalSum))
	tempNum=$((tempNum/10))
done

echo $totalSum

if [ $totalSum -eq $num ] 
then
	echo "YES $num is ARMSTRONG"
else
	echo "NO $num is NOT ARMSTRONG"
fi



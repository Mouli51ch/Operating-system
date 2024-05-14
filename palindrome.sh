echo "======PALINDROME PROGRAM======="
echo "Enter number:"
read num

# Check if input is a number
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a valid number."
    exit 1
fi

tempNum=$num
rev=0 

while [ $tempNum -gt 0 ]
do
    rem=$((tempNum % 10))
    rev=$((rev * 10 + rem))
    tempNum=$((tempNum / 10))
done

if [ $rev -eq $num ] 
then
    echo "YES PALINDROME"
else
    echo "NO PALINDROME"
fi


[02:26, 15/5/2024] Mouli Chakraborty: goodnight
[02:45, 15/5/2024] Eshita🤡: echo -n "Enter the number of elements: "
read n

echo "Enter the elements: "
for (( i=0; i<n; i++ ))
do
    read arr[i]
done

sum=0
for num in "${arr[@]}"
do
    sum=$(( sum + num ))
done

echo "The sum of the array elements is $sum"

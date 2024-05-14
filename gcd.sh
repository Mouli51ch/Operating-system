echo "Enter num1"
read num1

echo "Enter num2"
read num2

 while [  "$num1"  !=  "$num2"  ];
 do 
 	if [ "$num1" -gt "$num2" ]; then
 			num1=$((num1-num2))
 	else 
 			num2=$((num2-num1))
 	fi
  done
  
  echo $num1

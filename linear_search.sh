arr=(10 20 30 40 50 60)
echo "Array element are:"
for element in "${arr[@]}"; do
echo "$element"
done

echo "Enter which element you want to find"
read find

index=-1 #Imaginary Index
for((i=0;i<${#arr[@]};i++)); do
 if [ $find -eq ${arr[$i]} ]; then
  index=$((i))
 	break
     else 
           continue  
        fi
 done
 if [ $index -ne -1 ]
   then
   echo "$find is present at index position $index "
 else 
   echo "Element is not present"
   fi
 
 

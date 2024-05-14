Linear Search - Words
arr=( Hera Nyx Iris Helios Zeus Hades )
echo "Array elements are: "
for element in "${arr[@]}"; do
echo "$element"
done

echo "Enter which element you want to find"
read find

index=-1
for ((i=0; i<${#arr[@]}; i++)); do
	if [ "$find" = "${arr[$i]}" ]; then
	index=$((i))
	break
	
	else
	 continue
	fi
done

if [ $index -ne -1 ]; then
	echo "Element found at index position $index"
else
	echo "Element not found"
fi

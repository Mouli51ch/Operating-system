Shell program to perform addition, subtraction, multiplication, division, power.
echo "Enter first number: "
read num1
echo "Enter second number: "
read num2
add=$(($num1 + $num2))
sub=$(($num1 - $num2))
mul=$(($num1 * $num2))
div=$(($num1 / $num2))
pow=$(($num1 ** $num2))
echo "Addition = $add"
echo "Subtraction = $sub"
echo "Multiplication = $mul"
echo "Division = $div"
echo "Power = $pow"

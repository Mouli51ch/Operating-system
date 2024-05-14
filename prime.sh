#!/bin/bash

echo "====== PRIME NUMBER CHECK ======"
echo "Enter number:"
read num

# Check if input is a number
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a valid number."
    exit 1
fi

# A function to check for prime
is_prime() {
    local n=$1

    if [ $n -le 1 ]; then
        return 1
    fi

    if [ $n -le 3 ]; then
        return 0
    fi

    if [ $((n % 2)) -eq 0 ] || [ $((n % 3)) -eq 0 ]; then
        return 1
    fi

    i=5
    while [ $((i * i)) -le $n ]; do
        if [ $((n % i)) -eq 0 ] || [ $((n % (i + 2))) -eq 0 ]; then
            return 1
        fi
        i=$((i + 6))
    done

    return 0
}

if is_prime $num; then
    echo "YES, $num is a PRIME number"
else
    echo "NO, $num is NOT a PRIME number"
fi


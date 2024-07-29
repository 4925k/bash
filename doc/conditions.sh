# if conditions
# if [ condition ]; then ... fi
if  3 eq 3 ; then
    echo "Equal"
fi

read -rp "Enter a number: " num
if [ "$num" -gt 10 ]; then
    echo "Greater than 10"
elif [ "$num" -lt 10 ]; then
    echo "Less than 10"
else
    echo "Equal to 10"
fi

# eq = equal
# ne = not equal
# gt = greater than
# lt = less than
# ge = greater than or equal
# le = less than or equal

# exiting a script
# exit [n]
# exit 0
# exit

if [ "$num" -gt 10 ]; then
    echo "Greater than 10"
    exit 1
fi

# logical conditions
# and -> -a
# or -> -o
# not -> !

# and condition
if [ "$num" -gt 10 -a "$num" -lt 20 ]; then
    echo "Between 10 and 20"
fi

# or condition
if [ "$num" -lt 10 -o "$num" -gt 20 ]; then
    echo "Less than 10 or greater than 20"
fi

# working with string
# == -> equal
# != -> not equal
# -z -> empty
# -n -> not empty
read -rp "Enter your name: " name
if [ "$name" == "john" ]; then
    echo "Hello John"
fi

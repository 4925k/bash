# for loop
for n in {1..10}; do
    echo n
done


# while loop

number=1
while [ $number -le 10 ]; do
    echo $number
    number=$((number + 1))
done


# case

read -rp "Enter a number: " num
case $num in
    1)
        echo "One"
        ;;
    2)
        echo "Two"
        ;;
    3)
        echo "Three"
        ;;
    *)
        echo "Other"
        ;;
esac
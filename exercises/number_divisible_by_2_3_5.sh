# check if the number is divisible by 2, 3, 5
divisible() {
  local x=$1

  if [ $((x % 2)) -eq 0 ]; then
    echo "$x is divisible by 2"
  fi
  if [ $((x % 3)) -eq 0 ]; then
    echo "$x is divisible by 3"
  fi
  if [ $((x % 5)) -eq 0 ]; then
    echo "$x is divisible by 5"
  fi

}

read -rp "Enter a number: " num
divisible "$num"

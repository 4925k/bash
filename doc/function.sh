# function declaration

my-date() {
  echo "Today is $(date)"
}

my-date


# accessing arguments
hello() {
  echo "Hello $1"
  echo "Hello $2"
}

# passing arguments
hello "John" "Doe"

# returns the sum of two numbers
add () {
  echo $(( $1 + $2 ))
}

# access return of sum
sum=$(add 5 3)

echo "$sum"

# Note: variables in functions are global by default
# local variables
minus() {
  local result=$(( $1 - $2 ))
  echo $result
}

# access return of minus
result=$(minus 5 3)
echo "$result"
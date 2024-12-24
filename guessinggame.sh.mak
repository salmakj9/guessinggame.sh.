#!/bin/bash

# Function to count the number of files in the current directory
function file_count {
  echo $(ls -1 | wc -l)
}

# Main program logic
correct_count=$(file_count)
echo "Welcome to the Guessing Game!"
echo "Can you guess how many files are in the current directory?"

guess=-1
while [[ $guess -ne $correct_count ]]; do
  read -p "Enter your guess: " guess
  if [[ $guess -lt $correct_count ]]; then
    echo "Too low! Try again."
  elif [[ $guess -gt $correct_count ]]; then
    echo "Too high! Try again."
  fi

done

echo "Congratulations! You guessed correctly. There are $correct_count files in the directory."
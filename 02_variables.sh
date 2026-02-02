#!/bin/bash

PERSON1="Alice"
PERSON2="Bob"
echo "Hello, ${PERSON1} how are you doing today?"
echo "Hello, ${PERSON2} how are you doing today?"
echo "Hello, ${PERSON1} and ${PERSON2}! Welcome to the bash scripting tutorial."
echo "Goodbye, ${PERSON1} and ${PERSON2}! See you next time."



PERSON3=$1
PERSON4=$2
echo "Hello, $PERSON3 how are you doing today?"
echo "Hello, $PERSON4 how are you doing today?"
echo "Hello, $PERSON3 and $PERSON4! Welcome to the bash scripting tutorial."
echo "Goodbye, $PERSON3 and $PERSON4! See you next time."


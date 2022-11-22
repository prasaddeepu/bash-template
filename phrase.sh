#!/usr//bin/env bash

# Create a function  that  repeats a phrase "N" times.
# The function  should be called "phrase"  and should accept  two arguments.


phrase_generator() {
    # 1 = phrase
    # 2 = number of times to repeat
    for ((i=0; i<$1; i++)); do
        echo "$2"
    done
}

#create command line interface
#Parse Options
while [[ $# -gt 1 ]]
do
key="$1"

case $key in 
    -c|--count)
    COUNT="$2"
    shift #past argument
    ;;
    -p|--phrase)
    PHRASE="$2"
    shift #past argument
    ;;
esac
shift
done

#Run the Program
phrase_generator "${COUNT}" "${PHRASE}"
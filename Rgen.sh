#!/bin/bash

# rgen: random number/text generator

print_usage() {
    echo "Usage:"
    echo "  $0 num -min <min> -max <max>   # Generate random number"
    echo "  $0 txt -l <length>             # Generate random ASCII text string"
    exit 1
}

error_exit() {
    echo "Error: $1"
    exit 1
}

generate_number() {
    [[ "$min" =~ ^-?[0-9]+$ ]] || error_exit "Min must be an integer"
    [[ "$max" =~ ^-?[0-9]+$ ]] || error_exit "Max must be an integer"

    (( max < min )) && error_exit "Maximum number cannot be lower than minimum"

    range=$((max - min + 1))
    echo $(( RANDOM % range + min ))
}

generate_text() {
    [[ "$length" =~ ^[0-9]+$ ]] || error_exit "Length must be a positive integer"
    (( length < 1 )) && error_exit "Length must be greater than 0"

    tr -dc 'A-Za-z0-9' </dev/urandom | head -c "$length" # useless comment
    echo
}

# Entry point
[[ $# -lt 2 ]] && print_usage

case "$1" in
    num)
        while [[ $# -gt 0 ]]; do
            case "$2" in
                -min)
                    min="$3"
                    shift 2
                    ;;
                -max)
                    max="$3"
                    shift 2
                    ;;
                *)
                    shift
                    ;;
            esac
        done
        [[ -z "$min" || -z "$max" ]] && print_usage
        generate_number
        ;;
    txt)
        [[ "$2" == "-l" && -n "$3" ]] || print_usage
        length="$3"
        generate_text
        ;;
    *)
        print_usage
        ;;
esac


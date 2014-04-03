function reverse_string () {        # needs error handling for null strings
    forward=$1
    for ((x=$((${#forward}-1));x>=0;x--)); do reverse="$reverse${forward:$x:1}"; done
    echo $reverse
    return 0
}

function is_palendrome () {
    flip=$(reverse_string $1)
    if [[ $1 =~ ^[0-9]+$ ]] && [[ $flip =~ ^[0-9]+$ ]] && [ $1 -eq $flip ]; then
        echo "is"
        return 0
    elif ! [[ $1 =~ ^[0-9]+$ ]] && ! [[ $flip =~ ^[0-9]+$ ]] && [ $1 = $flip ]; then
        echo "is"
        return 0  
    else
        echo "is not"
        return 1
    fi
}
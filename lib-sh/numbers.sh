. ../lib-sh/strings.sh

function max_palendrome () {

# Totally non-ideal.  I had to up my ulimit on user processes to even try to run this.
##  I'm not honestly sure exactly how BASH executes this, versus say Ruby, but it seems much less
## capable of handling deep recursion.  
## I likely need to focus on trying to improve the bounding cases on the recursion to 
## limit the search depth or something.  Maybe I can flip the recursion to have fewer 
## active execution flows?


#
#
#
        # Weak start assumption.  This is deliberately called for just numbers right now
    for arg in $@; do 
        if ! [[ $arg =~ ^[0-9]+$ ]]; then
            echo "running numeric operation on non-number $arg; exiting"
            exit
        fi
    done
    num1=$1
    num2=$2
    max=$3
    upper=$4
    lower=$5
    prod=$(($num1 * $num2))
    is_pal=$(is_palendrome $prod)

    if [ "$is_pal" = 'is' ]; then
        if [ $(($num1*$num2)) -gt $max ]; then
            lower=$max
            max=$(($num1*$num2))
        fi
        if [ $num1 -gt 2 ] && [ $(($num1*$num2)) -gt $lower ]; then
            lower=$max
            max=$(max_palendrome $num1 $(($num2-1)) $max $upper $lower)
        else
            echo $max
            return $max
        fi
    else        
        if [ $num2 -gt 2 ] && [ $(($num1*$num2)) -gt $lower ]; then
            lower=$max
            max=$(max_palendrome $num1 $(($num2-1)) $max $upper $lower)
        else
            if [ $num1 -gt 2 ]; then
                lower=$max
                max=$(max_palendrome $(($num1-1)) $num2 $max $upper $lower)
            else 
                echo $max
                return $max
            fi
        fi

    fi
    echo $max
}
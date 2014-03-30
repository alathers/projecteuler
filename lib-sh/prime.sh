
function is_prime () {
    tester=2
    while [ $(($tester*$tester)) -lt $1 ]; do 
        if [ $(($1%${tester})) -eq 0 ]; then
            echo $tester
            return 1
        fi
        tester=$(($tester+1))
    done
    echo 'prime'
    return 0
}
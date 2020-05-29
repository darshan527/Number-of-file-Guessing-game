function chk {
        if [[ $1 -gt $2 ]]
        then
                echo "High"
        elif [[ $1 -lt $2 ]]
        then
                echo "Low"
        elif [[ $1 -eq $2 ]]
        then
                echo "Equal"
        fi
}
while [[ 1 -gt 0 ]]
do
        echo "Enter our guess"
        read n
        t=$(ls | wc -l)
        chk $n $t
        if [[ $n -eq $t ]]
        then
                break
        fi
done
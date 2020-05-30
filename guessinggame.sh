function chk {
        if [[ $1 -gt $2 ]]
        then
                echo "High"
        elif [[ $1 -lt $2 ]]
        then
                echo "Low"
        elif [[ $1 -eq $2 ]]
        then
                echo "Congratulations, you got it right"
        fi
}
while [[ 1 -gt 0 ]]
do
        echo "Enter your guess"
        read n
	if [[ $n =~ ^[0-9]*$ ]]
	then
        	t=$(ls -la | egrep -c '^-')
        	chk $n $t
        	if [[ $n -eq $t ]]
        	then
                	break
        	fi
	else
		echo "Please enter only integer"
	fi
done

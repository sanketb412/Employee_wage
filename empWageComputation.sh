
echo "Welcome to x.y.z Company"

#UC1

isPresent=1;
randomCheck=$((RANDOM%2));

if [ $isPresent -eq $randomCheck ];
then
	echo "Employee is Present"

	#UC2
	isFullTime=1;
	isPartTime=2;
	Max_Hrs_In_Month=100;
	Num_Working_Days=20;
	empRatePerHr=20;

	totalEmpHrs=0;
	totalWorkingDays=0;

	while [[ $totalEmpHrs -lt $Max_Hrs_In_Month && $totalWorkingDays -lt $Num_Working_Days ]]
	do
	function getWorkingHrs( )
	{
		case $1 in
			$isFullTime)
				workHours=8
				;;
			$isPartTIme)
				workHours=4
				;;
			*)
				workHours=0
				;;
		esac
		echo $workHours
	}

	while [[ $totalWorkHours -lt $Max_Hrs_In_Month && $totalWorkingDays -lt $Num_Working_Days ]]
        do
		((totalWorkingDays++))
                workHours="$( getWorkingHrs $((RANDOM%3)) )"
		totalWorkHours=$(( $totalWorkHours + $workHours ))
	done

	totalSalary=$(($totalWorkHours*$empRatePerHr));

	echo $totalSalary

else
        echo "Employee is Absent"
fi

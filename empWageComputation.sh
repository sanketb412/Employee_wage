
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




	functoin calDailyWage ( )
	{
		local workers=$1
		wage=$(($workHOurs*$empRatePerHr))
		echo $wage
	}

	while [[ $totalWorkHours -lt $Max_Hrs_In_Month && $totalWorkingDays -lt $Num_Working_Days ]]
        do
		((totalWorkingDays++))
                workHours="$( getWorkingHrs $((RANDOM%3)) )"
		totalWorkHours=$(( $totalWorkHours + $workHours ))
		empDailyWage[$totalWorkingDays]="$( calDailyWage $workHours )"
	done

	totalSalary=$((calDAilyWage * $totalWorkHours))

	echo "Daily wage " ${empDAilyWage[@]}

else
        echo "Employee is Absent"
fi

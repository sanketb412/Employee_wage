
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
		((totalWorkingDays++))
		empCheck=$((RANDOM%3));
		case $empCheck in
			$isFullTime)
				empHrs=8
				;;
			$isPartTIme)
				empHrs=4
				;;
			*)
				empHrs=0
				;;
		esac
		totalEmpHrs=$(($totalEmpHrs*$empHrs));
	done
	totalSalary=$(($totalEmpHrs*$empRatePerHr));

	echo $totalSalary

else
        echo "Employee is Absent"
fi

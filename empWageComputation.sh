
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
	empRatePerHr=20;
	empCheck=$((RANDOM%3));

	case $empCheck in
		$isFullTime)
			empHrs=8
			;;
		$isPartTIme)
			empHrs=4
			;;
	esac

	salary=$(($empHrs*$empRatePerHr*20));

	echo $salary

else
        echo "Employee is Absent"
fi

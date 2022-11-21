echo "Welcome to the Employee Wage Computation Problem"


totalWorkingHour=0;
empRatePerHr=20;
numWorkingDays=20;

while [[ $day -le 20 && totalWorkingHour -lt 40 ]]

do
randomCheck=$((RANDOM%3));

case  $ramdomCheck in
		$isFullTime)
			empHrs=8
			;;
		$isPartTime)
			empHrs=4
			;;
		*)
		empHrs=0
			;;
esac

totalWorkingHour=$(($totalWorkingHour+$empHrs))

if [ $totalWorkingHour -gt 40 ]
then
totalWorkingHour=$(($totalWorkingHour+$empHrs))
break;
fi
salary=$(($empHrs*$empRatePerHr));
totalSalary=$(($totalSalary + $salary));
((day++))
done

echo "Employee has earned $totalSalary in a month (Total working hour : $totalWorkingHour)";

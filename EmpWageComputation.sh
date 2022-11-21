echo "Welcome to the Employee Wage Computation Problem"
v
isFullTime=1;
isPartTime=2;
totalWorkingHour=0;
empRatePerHr=20;
numWorkingDays=20;
day=1;

function calculateWorkingHour() {
	case  $randomCheck in
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
	echo $empHrs;

}


while [[ $day -le 20 && totalWorkingHour -lt 40 ]]

do
randomCheck=$((RANDOM%3));
empHrs=$(calculateWorkingHour $randomCheck);
totalWorkingHour=$(($totalWorkingHour+$empHrs));

if [ $totalWorkingHour -gt 40 ]
then
totalWorkingHour=$(($totalWorkingHour-$empHrs))
break;
fi
salary=$(($empHrs*$empRatePerHr));
totalSalary=$(($totalSalary + $salary));
echo $day
echo $salary
Dailywage[(($day))]=$(($salary));
((day++));
done

echo "Employee has earned $totalSalary in a month (Total working hour : $totalWorkingHour)";
echo "DailyWage: "${Dailywage[@]}
echo "Number of Days worked: "$(($day-1))

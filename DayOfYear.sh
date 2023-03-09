 #! /bin/bash

#Validation - gets the arguments from the user input
#receive 3 arguments from the user - Year, month, day
#Output: if valid - sends the arguments to the relevant function.
#Output: else - sends an error message to the final output function.

function valid() {
while true; do
read -p "Enter the year: " year
if [[ $year -ge 1582 && $year =~ ^[0-9]{4}$ ]]; then
read -p "Enter the month: " Month
if [[ $Month -ge 1 && $Month -le 12 ]]; then
read -p "Enter the day: " day
if [[ $day -ge 1 && $day -le 31 ]]; then
return 0
else
echo "Must enter a valid day"
fi
else
echo "Must enter a valid month. Let's start it all over again"
fi
else
echo "Must enter a valid year"
fi
done
}


#Year - gets 1 argument(the year) from Valid function
#input: 1 argument(the year) from Valid function
#output: 1 argument - IsLeapYear

function IsLeapYear (){

    local year=$year
    if (( year % 4 == 0 && year % 100 != 0 )) || (( year % 400 == 0 ))
    then
        echo "true"
    else
        echo "false"
    fi
}


#Number of the days in the specific month
#input: 1 argument(the year) from IsLeapYear function
#input: 1 argument(the month) from Valid function
#output: 2 arguments - IsLeapYear, DayInMonth 

function MonthDaysNum (){

if [[ $Month -eq 1 || $Month -eq 3 || $Month -eq 5 || $Month -eq 7 || $Month -eq 8 || $Month -eq 10 || $Month -eq 12 ]]
then
    echo "31"
elif [[ $Month -eq 4 || $Month -eq 6 || $Month -eq 9 || $Month -eq 11 ]]
then 
    echo "30"
elif [[ $Month -eq 2 ]]
then
    if [[ $(IsLeapYear) == "true" ]]
    then
        echo "29"
    else 
        echo "28"
    fi
fi
}

#The number of days until this date in the specific year
#input: 2 arguments(the year,the month) from MonthDaysNum function
#input: 1 argument(the day) from Valid function
#output: 3 arguments - IsLeapYear, Month, NumOfDays 

function NumOfDays(){
declare -a Months_leap=(31 29 31 30 31 30 31 31 30 31 30 31)
declare -a Months=(31 28 31 30 31 30 31 31 30 31 30 31)
if [[ $(IsLeapYear) -eq true ]]
then
    i=1
    Add=0
    while [[ $i -lt $Month ]]; do
        Add=$((Add + Months_leap[i-1]))
        ((i++))
    done

    Sum=$((Add + day))
    echo "The total number of days is: $Sum"
else

    i=1
    Add=0
    while [[ $i -lt $Month ]]; do
        Add=$((Add + Months[i-1]))
        ((i++))
    done
    Sum=$((Add + day))
    echo "The total number of days is: $Sum"

fi
}


#The final output
#input: 3 arguments(the year,the month, the day) from DaysCount function
#output: Our final script
function Output(){

echo "The Date you entered is $day/$Month/$year"
if [[ $(IsLeapYear) == "true" ]]
then
echo "The $year was a leap year."
else
echo "The $year was a common year."
fi
echo "There were $(MonthDaysNum) days this month."
echo "And the total number of days that year was $(NumOfDays)"
}


function main() {
if valid; then
Output
fi
}

main
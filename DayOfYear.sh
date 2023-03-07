#! /bin/bash




#Validation - gets the arguments from the user input
#receive 3 arguments from the user - Year, month, day
#Output: if valid - sends the arguments to the relevant function.
#Output: else - sends an error message to the final output function.
function Valid (){
read -p

}

#Year - gets 1 argument(the year) from Valid function
#input: 1 argument(the year) from Valid function
#output: 1 argument - IsLeapYear
function IsLeapYear(){


}

#Number of the days in the specific month
#input: 1 argument(the year) from IsLeapYear function
#input: 1 argument(the month) from Valid function
#output: 2 arguments - IsLeapYear, DayInMonth 
function MonthDaysNum (){


}

#The number of days until this date in the specific year
#input: 2 arguments(the year,the month) from MonthDaysNum function
#input: 1 argument(the day) from Valid function
#output: 3 arguments - IsLeapYear, DayInMonth, NumOfDays 
function DaysCount(){
if [[ $IsLeapYear true ]]
then
Count=366
else
Count=365
fi

}

#The final output
#input: 3 arguments(the year,the month, the day) from DaysCount function
#output: Our final script
function Output(){


}
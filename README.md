# DayOfYear

Day of the year
Attention – in this exercise you must read the whole three
tasks beforehand and decide which function to implement
first.
Pay attention to input validation, scoping, modularity,
naming conventions.
Try to add auxiliary functions as much as you can.
1. Your task is to write and test a function which takes
three arguments (a year, a month, and a day of the
month) and returns the corresponding day of the year, or
returns None if any of the arguments is invalid.

Input: (2000, 12, 31) - (Y, M, D)
Result:366
Input: (2000, 1, 1) - (Y, M, D)
Result:1
Input: (1900, 3, 1) - (Y, M, D)
Result:60
Input: (2000, 3, 1) - (Y, M, D)
Result:61

2. Your task is to write and test a function which takes
two arguments (a year and a month) and returns the
number of days for the given month/year pair (while only
February is sensitive to the year value, your function
should be universal).
Input: 1900,2 - (Y, M)
Result: 28
Input: 2000,2
Result: 29
Input: 2016,1
Result: 31
Input: 1987,11
Result: 30

3. Your task is to write and test a function which takes
one argument (a year) and returns True if the year is a
leap year, or False otherwise.
As you surely know, due to some astronomical reasons, years
may be leap or common. The former are 366 days long, while
the latter are 365 days long.
Since the introduction of the Gregorian calendar (in 1582),
the following rule is used to determine the kind of year:

• if the year number isn't divisible by four, it's a
common year;
• otherwise, if the year number isn't divisible by 100,
it's a leap year;
• otherwise, if the year number isn't divisible by 400,
it's a common year;
• Otherwise, it's a leap year.
Sample input: 2000
Expected output: Leap year
Sample input: 2015
Expected output: Common year
Sample input: 1999
Expected output: Common year
Sample input: 1996
Expected output: Leap year
Sample input: 1580
Expected output: Not within the Gregorian calendar period

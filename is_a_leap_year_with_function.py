def is_leap_year():
    year = 1750
    if (year % 4 == 0) and (year % 100 != 0):
        return "Is a leap year"
    elif (year % 400 == 0):
        return "Is a leap year"
    else:
        return "is not a leap year"

print(is_leap_year())



        

year = 1752
if ((year %4 == 0) and (year % 100 != 0)) or (year % 400 == 0):
    print("is a leap year")
else:
    print("is not a leap year")

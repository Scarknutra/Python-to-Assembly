the_list = []
size = int(input("Items to add?"))
i = 0
while i < size:
    item = int(input())
    the_list.append(item)
    i = i + 1
print(the_list)
i = 0
maxnum = 0
minnum = 0
while i < size:
    if the_list[i] > maxnum:
        maxnum = the_list[i]
    i = i+1
print(maxnum)
i = 0
while i < size:
    if the_list[i] < minnum:
        minnum = the_list[i]
    i = i+1
print(minnum)
print("Range is: " + str(maxnum - minnum))

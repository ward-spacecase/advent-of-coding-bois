file = open("data.txt", "r")
data = file.readlines()

a = 0
b = 0
first = 0

second = 0
third = 0

for line in data:
    if line != "\n":
        a = int(line)
        b += a
        print("Sum: ", b)
    else:
        if b > first:
            third = second
            second = first
            first = b
        elif b > second:
            third = second
            second = b
        elif b > third:
            third = b
        b = 0

print("The first is: ", first)
print("The second is: ", second)
print("The third is: ", third)

print ("The sum of all is: ", first + second + third)
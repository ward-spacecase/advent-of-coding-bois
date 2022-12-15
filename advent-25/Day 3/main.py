file = open("data.txt", "r")
lines = file.readlines()

value_total = 0

for line in lines:
    first_half = set(line[:len(line)//2])
    second_half = set(line[len(line)//2:])
    overlap = (first_half.intersection(second_half)).pop()
    # Splitting string into two halves, then finding the intersection of both.

    if overlap.islower():
        lower_result = ord(overlap[0]) - 96
        value_total += lower_result   
    else:
        if overlap.isupper():
            upper_result = ord(overlap[0]) - 38
            value_total += upper_result

print("The total sum of all priority values is: ", value_total)             

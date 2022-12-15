with open('data.txt', 'r') as file:
    lines = file.readlines()
    rucksacks = [entry.strip() for entry in lines]

value_total = 0

while len(rucksacks) > 0:
    first_line = set(rucksacks.pop())
    second_line = set(rucksacks.pop())
    third_line = set(rucksacks.pop())
    overlap = ((first_line.intersection(second_line)).intersection(third_line)).pop()
    # Splitting string into two halves, then finding the intersection of both.

    if lines != "\n":
        if overlap.islower():
            lower_result = ord(overlap[0]) - 96
            value_total += lower_result 
        else:
            if overlap.isupper():
                upper_result = ord(overlap[0]) - 38
                value_total += upper_result

print("The running sum of all priority values is: ", value_total)   

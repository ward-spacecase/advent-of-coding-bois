with open('data.txt', 'r') as file:
    lines = file.readlines()
    pairs = [entry.strip() for entry in lines]

pair_count = 0
for line in pairs:
    first_range, second_range = line.split(",")
    start_1, end_1 = map(int, first_range.split("-"))
    start_2, end_2 = map(int, second_range.split("-"))

    if start_1 in range(start_2, end_2+1):
        pair_count += 1
    else:
        if end_1 in range(start_2, end_2+1):
            pair_count += 1
        else:
            if start_2 in range(start_1, end_1+1):
                pair_count += 1
            else:
                if end_2 in range(start_1, end_1+1):
                    pair_count += 1

print(pair_count)

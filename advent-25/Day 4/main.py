with open('data.txt', 'r') as file:
    lines = file.readlines()
    pairs = [entry.strip() for entry in lines]

def range_a_to_range_b(range_1, range_2):
    start_1, end_1 = map(int, range_1.split("-"))
    start_2, end_2 = map(int, range_2.split("-"))
    return start_2 <= start_1 and end_1 <= end_2

pair_count = 0
for line in pairs:
    first_range, second_range = line.split(",")
    if range_a_to_range_b(first_range, second_range) or range_a_to_range_b(second_range, first_range):
        pair_count += 1

print(pair_count)
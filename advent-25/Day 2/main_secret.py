file = open("data.txt", "r")
content = file.readlines

user_point_total = 0
user_point = 0

win = 6
draw = 3
lose = 0
# Point system for wins, losses and draws.
rock = 1
paper = 2
scissors = 3
# Point system for rock, paper and scissors.

for rock_game in content():
    if "A X" in rock_game:
        user_point = lose + scissors
        user_point_total += user_point
    if "A Y" in rock_game:
        user_point = draw + rock
        user_point_total += user_point
    if "A Z" in rock_game:
        user_point = win + paper
        user_point_total += user_point

for paper_game in content():
    if "B X" in paper_game:
        user_point = lose + rock
        user_point_total += user_point
    if "B Y" in paper_game:
        user_point = draw + paper
        user_point_total += user_point
    if "B Z" in paper_game:
        user_point = win + scissors
        user_point_total += user_point

for scissors_game in content():
    if "C X" in scissors_game:
        user_point = lose + paper
        user_point_total += user_point
    if "C Y" in scissors_game:
        user_point = draw + scissors
        user_point_total += user_point
    if "C Z" in scissors_game:
        user_point = win + rock
        user_point_total += user_point
    
print("The total number of points from the Strategy guide is: ", user_point_total)
# Prints total number of points from Strategy Guide.
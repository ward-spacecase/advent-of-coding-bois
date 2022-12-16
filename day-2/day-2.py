# global total
totalPoints = 0

# --- win/tie/loss functions ---
def win(yourChoice):
	global totalPoints
	totalPoints += 6
	print(yourChoice + " | win")
	
def tie(yourChoice):
	global totalPoints
	totalPoints += 3
	print(yourChoice + " | tie")

def loss(yourChoice):
	print(yourChoice + " | loss")

# --- throw functions ---
# you choose rock
def throw_rock(oppChoice):
	global totalPoints
	# add one for rock
	totalPoints += 1
	# tie
	if oppChoice == 'A':
		tie("rock")
	# loss
	elif oppChoice == 'B':
		loss("rock")
	# win
	elif oppChoice == 'C':
		win("rock")

# you choose paper
def throw_paper(oppChoice):
	global totalPoints
	# add 2 for paper
	totalPoints += 2
	# win
	if oppChoice == 'A':
		win("paper")
	# tie
	elif oppChoice == 'B':
		tie("paper")
	# loss
	elif oppChoice == 'C':
		loss("paper")


# you choose scissors
def throw_scissors(oppChoice):
	global totalPoints
	# add 3 for scissors
	totalPoints += 3
	# win
	if oppChoice == 'A':
		loss("scissors")
	# tie
	elif oppChoice == 'B':
		win("scissors")
	# loss
	elif oppChoice == 'C':
		tie("scissors")


# --- determine which throw function ---
# check what you choose and throw.
def determine_throw(yourChoice, oppChoice):
	# X is rock
	if yourChoice == 'X':
		throw_rock(oppChoice)
	# Y is paper
	elif yourChoice == 'Y':
		throw_paper(oppChoice)
	# Z is scissors
	elif yourChoice == 'Z':
		throw_scissors(oppChoice)
	else:
		# error if not {X, Y, Z}
		raise Exception("Invalid choice, must be in {X, Y, Z}")


# --- main function ---
def main():
	global totalPoints
	# read file
	with open('rps.txt', 'r') as f:
		# read row
		for line in f:
			# seperate column
			choices = line.split()
			# 2nd row is myChoice
			determine_throw(choices[1], choices[0])
		print(totalPoints)
	# close file
	f.close()

# call main
main()

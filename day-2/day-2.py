# global total
totalPoints = 0

# --- win/tie/loss functions ---
def rock(yourChoice):
	global totalPoints
	totalPoints += 1
	print(yourChoice + " | rock")

def paper(yourChoice):
	global totalPoints
	totalPoints += 2
	print(yourChoice + " | paper")

def scissors(yourChoice):
	global totalPoints
	totalPoints += 3
	print(yourChoice + " | scissors")

# --- throw functions ---
# you choose loss
def choose_loss(oppChoice):
	global totalPoints
	# add one for rock
	totalPoints += 0
	# tie
	if oppChoice == 'A':
		scissors("loss")
	# loss
	elif oppChoice == 'B':
		rock("loss")
	# win
	elif oppChoice == 'C':
		paper("loss")

# you choose draw
def choose_draw(oppChoice):
	global totalPoints
	# add 2 for paper
	totalPoints += 3
	# win
	if oppChoice == 'A':
		rock("draw")
	# tie
	elif oppChoice == 'B':
		paper("draw")
	# loss
	elif oppChoice == 'C':
		scissors("draw")


# you choose win
def choose_win(oppChoice):
	global totalPoints
	# add 3 for scissors
	totalPoints += 6
	# win
	if oppChoice == 'A':
		paper("win")
	# tie
	elif oppChoice == 'B':
		scissors("win")
	# loss
	elif oppChoice == 'C':
		rock("win")


# --- determine which throw function ---
# check what you choose and throw.
def determine_throw(yourChoice, oppChoice):
	# X is rock
	if yourChoice == 'X':
		choose_loss(oppChoice)
	# Y is paper
	elif yourChoice == 'Y':
		choose_draw(oppChoice)
	# Z is scissors
	elif yourChoice == 'Z':
		choose_win(oppChoice)
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

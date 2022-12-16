
elfTotal = []

currentTotal = 0

# open text file input.txt
with open('input.txt', 'r') as f:

	# loop over everyline
	for line in f:
		# check for new line - indicates new elf
		if line == "\n":
			# make sure not adding empty zeros
			if currentTotal != 0:
				# add total to array
				elfTotal.append(currentTotal)
			# reset total
			currentTotal = 0
		# check for empty/end of page
		elif line == '':
			print("hello")
		# add to total
		else:
			currentTotal = currentTotal + int(line)

	else:
		# sort largest to smallest
		elfTotal.sort(reverse=True)

		# print 3 largest (index 0-2)
		print(elfTotal[0])
		print(elfTotal[1])
		print(elfTotal[2])

		# total top 3
		totalTopThree = elfTotal[0] + elfTotal[1] + elfTotal[2]

		# print top 3
		print("\nSum: " + str(totalTopThree))

		f.close()


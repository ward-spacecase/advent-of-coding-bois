
elfTotal = []

currentTotal = 0

with open('input.txt', 'r') as f:
	for line in f:
		print(currentTotal)
		if line == "\n":
			if currentTotal != 0:
				elfTotal.append(currentTotal)
			currentTotal = 0
		elif line == '':
			print("hello")
		else:
			currentTotal = currentTotal + int(line)

	else:
		# No more lines to be read from file
		maxIndex = max(elfTotal)
		print(elfTotal)
		print(maxIndex)
		f.close()


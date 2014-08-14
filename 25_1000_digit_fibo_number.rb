# time taken < 7 mins

# decent

# SOLVED

# okey


# The Fibonacci sequence is defined by the
# recurrence relation:

# Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
# Hence the first 12 terms will be:

# F1 = 1
# F2 = 1
# F3 = 2
# F4 = 3
# F5 = 5
# F6 = 8
# F7 = 13
# F8 = 21
# F9 = 34
# F10 = 55
# F11 = 89
# F12 = 144
# The 12th term, F12, is the first term to
# contain three digits.

# What is the first term in the Fibonacci
# sequence to contain 1000 digits?

# ok so using recursion is going to take waaaaay too long

# need to generate a fibo sequence with a forward loop

def sequence_maker()
	sequence = [1,1,2]
	term_count = 3
	while true
		ele_to_add = sequence[-1]+sequence[-2]
		sequence << ele_to_add
		term_count += 1
		digit_length = ele_to_add.to_s.length
		if digit_length == 1000
			# return sequence.last
			return term_count
			# return sequence.index(ele_to_add)
		end
	end
	return sequence
end


p sequence_maker

# what did we learn??
# - generating the sequence by recusion was not the way to go
# 	bc it takes wayyy to long.
# - so we start with the first terms, and then build from there
# - n-1 n-2 in this case refers to positions in the sequence
# - using term count is the way to go because .index returns
# 	the index (duh) which starts from 0 not the term count 
# 	which starts from 1

# - so generating a sequence with a loop off of an array seems 
# 	like a decent strategy in some cases (remember collatz sequence)?

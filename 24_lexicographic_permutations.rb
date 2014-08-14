# time taken < 5 mins

# you got lucky, that ruby has .permutation which returns lexicographic order

# SOLVED


# should do this without the .permutation method




# A permutation is an ordered arrangement of objects.
# For example, 3124 is one possible permutation of the
# digits 1, 2, 3 and 4. If all of the permutations are
# listed numerically or alphabetically, we call it lexicographic
# order. The lexicographic permutations of 0, 1 and 2 are:

# 012   021   102   120   201   210

# What is the millionth lexicographic permutation of the
# digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?

# you got lucky, .permutation does this for you

def lexo_matic()
	# arr = [0,1,2]
	arr = [0,1,2,3,4,5,6,7,8,9]

	mega_array = arr.permutation().to_a

	return mega_array[999999]

end

p lexo_matic

# potential answer = [2, 7, 8, 3, 9, 1, 5, 4, 6, 0]

# 2783915460

# time taken - 8:34.9




# The sum of the squares of the
# first ten natural numbers is,

# 12 + 22 + ... + 102 = 385
# The square of the sum of
# the first ten natural numbers is,

# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum
# of the squares of the first ten natural
# numbers and the square of the sum is
# 3025 − 385 = 2640.

# Find the difference between the sum of the squares
# of the first one hundred natural numbers
# and the square of the sum.



# planning

# so seems straightforward

# find the sum of the squares from 1..100
# then sum 1..00, square it and subtract it from the first part (may be negative)


def sum_square_difference()

	indiv_squares_sum = 0
	straight_sum = 0

	(1..100).each do |num|
		indiv_squares_sum += num**2
		straight_sum += num
	end
	# p indiv_squares_sum
	# p straight_sum**2
	return (straight_sum**2) - indiv_squares_sum
end


p sum_square_difference


# what did we learn here?
# - you didnt read the question quite right: didnt subtract in the right order so
#   at first got a negative numbers rather than a positive one
# - otherwise good use of range and got it

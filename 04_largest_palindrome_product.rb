# time taken - 15:20.4

# GOOD, got it with minimal printing/irb



# so we need to multiply two three digit numbers together
# from 100 to 999 on both counts
# then check if it is a palindrome,
# then check that to see if its larger than the previous palindrome
# then return the largest palindrome



def is_palindrome(num)
	num_string = num.to_s
	if num_string == num_string.reverse
		return true
	else
		return false
	end
end

# p is_palindrome(9009)


def largest_palindrome()
	max_palindrome = 0
	(100..999).each do |n1|
		(100..999).each do |n2|
			product = n1*n2
			# p product
			if is_palindrome(product) == true && (product > max_palindrome)
				max_palindrome = product
			end
		end
	end
	return max_palindrome
end

p largest_palindrome


# what did we learn/need to improve?
# - you were a little shaky with your ranges [..] vs. (..)
# 	^ (1..100) is a range of numbers while [1..100] is a range in INDEXES in an array
# - you didnt quite get the intent at first, but then you got it
# 	^ had to multiply each number in (100..999) n1 by a complete other range (100..999) n2

# what did i do ok:
# - logic was GOOD
# - storing next largest in temp variable was good	


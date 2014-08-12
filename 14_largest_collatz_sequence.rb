
# SOLVED

# answer is 837799

# def revisit to go through some elements of the Problem
# you got it, you just need to get it faster and better


# The following iterative sequence is defined
# for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we
# generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms.
# Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers
# finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.



def collatz_jawn(num)
	chain = []
	while true
		if num == 1
			return chain.count
		elsif num.odd?
			num = num*3 + 1
			chain << num
		elsif num.even?
			num = num/2
			chain << num
		end
	end
end


# p collatz_jawn(13)


def longest_chain()
	num = 999999
	longest = 0
	temp_longest = 0
	right_num = 0
	while num > 0
		p num
		temp_longest = collatz_jawn(num)
		if temp_longest > longest
			longest = temp_longest
			right_num = num
		end
		num = num - 1
	end
	return right_num
end

p longest_chain





			


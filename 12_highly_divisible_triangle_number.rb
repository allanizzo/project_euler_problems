

# solved but should take another look, it took mad process, longer than it should have

# answer 76576500


# The sequence of triangle numbers is generated by adding the
# natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten
# terms would be:

# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

# Let us list the factors of the first seven triangle numbers:

#  1: 1
#  3: 1,3
#  6: 1,2,3,6
# 10: 1,2,5,10
# 15: 1,3,5,15
# 21: 1,3,7,21
# 28: 1,2,4,7,14,28
# We can see that 28 is the first triangle number to have over five divisors.

# What is the value of the first triangle number to have over five hundred divisors?



# so we should start making triangle numbers, then when we have one, check to see how many
# numbers modulo into it and when it has 500, return the joint


def triangle_maker()
	n = 1
	while true
		triangle_number = triangulator(n)
		p divisor_check(triangle_number)
		# p n
		# p triangle_number
		if divisor_check(triangle_number) > 500
			return triangle_number
		end
		n += 1
	end
end

def triangulator(num)
	sum = 0
	(1..num).each do |ele|
		sum = sum + ele
	end
	return sum
end


def divisor_check(num)
	base = 1
	divisor_count = 0
	while base <= num
		if num % base == 0
			divisor_count += 1
		end
		base += 1
	end
	return divisor_count
end


# p divisor_check(28)

p triangle_maker

















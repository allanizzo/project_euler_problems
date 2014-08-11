
time taken < 5 mins, good!

SOLVED

# 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 21000?

def digit_summer(pow_pow)
	digit = 2**pow_pow

	digit_string = digit.to_s

	sum = 0

	digit_string.each_char do |num|
		sum = sum + num.to_i
	end
	return sum
end

p digit_summer(1000)

# what did we learn?

# - converting the num to string for each_char is good idea
# - RETURN RETURN RETURN the thing that you actually want.
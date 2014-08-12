
time taken 19:31.6 generally too long but includes printing and futzing and boss-buttoning

solved

# Let d(n) be defined as the sum of proper divisors of n
# (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are
# an amicable pair and each of a and b are called amicable numbers.

# For example, the proper divisors of 220 are:
# 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284.
# The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.


# basic idea is to 
# (1) list off the proper divisors and then sum them for numbers < 10 000
# (2) then to take that sum and run the same summing process
# (3) if that sum == the first sum and the numbers arent the same
# 	add it to an array for summing later

def arr_sum(arr)
	sum = 0
	arr.each do |ele|
		sum += ele
	end
	return sum
end

def divisor_sum(num)
	base = 1
	div_sum = 0
	while base < num
		if num % base == 0
			div_sum += base
		end
		base += 1
	end
	return div_sum
end

def amicable()
	amicable_array = []
	(1...10000).each do |num|
		# p num
		amic_sum_1 = divisor_sum(num)
		amic_sum_2 = divisor_sum(amic_sum_1)
		if amic_sum_2 == num && num != amic_sum_1
			amicable_array << num
			amicable_array << amic_sum_2
		end
	end
	return arr_sum(amicable_array.uniq)
	# return amicable_array
	# one question is do we need to call .uniq or check for pre-existing amicable numbers
end

p amicable

# p divisor_sum(220)

# what did we learn??
# - in the divisor_sum, you had the wrong number adding to sum
# 	^ when your in the crunch, TAKE YOUR TIME
# - if you arent clear on what the problem is asking -- CLARIFY
# 	^ you had dupes above, werent sure what "counted" as amicable
# - otherwise you did decent	




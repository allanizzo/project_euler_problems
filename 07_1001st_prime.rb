
# time taken - 14:29.3



# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
# that the 6th prime is 13.

# What is the 10 001st prime number?


def is_prime(num)
	if num == 2
		return true
	end
	prime_check = 2
	while prime_check < num
		if num % prime_check == 0
			return false
		end
		prime_check += 1
	end
	return true
end


def one_oh_oh_one_prime(max)
	prime_counter = 0
	wind_up = 2
	prime_array = []
	while prime_counter < max
		p wind_up
		if is_prime(wind_up)
			prime_counter += 1
			prime_array << wind_up
		end
		wind_up += 1
	end

	return prime_array.last
end

p one_oh_oh_one_prime(10001)

# # things we learned need to follow up on:
# - took too long to do this problem, but did ok
# - FOLLOW UP:
# 	(1) i want to check the condition terminating the while loop,
# 		why does it work here and not in other problems where things
# 		were wrongly appended etc...
# 		NOTE - i think i know why (using a condition of the array to check for termination)
# 		vs a counter but i want to be sure
# 	(2) strategy - returning a number when a counter was hit vs. building an array and
# 		picking the last element - SHOULD DO PROBLEM BOTH WAYS.	
# 50_consecutive_prime_sum.rb



# The prime 41, can be written as
# the sum of six consecutive primes:
# 41 = 2 + 3 + 5 + 7 + 11 + 13

# This is the longest sum of
# consecutive primes that adds
# to a prime below one-hundred.

# The longest sum of consecutive
# primes below one-thousand that
# adds to a prime, contains 21
# terms, and is equal to 953.

# Which prime, below one-million,
# can be written as the sum of
# the most consecutive primes?

# def is_prime(num)
# 	if num.even? == true
# 		return false
# 	elsif num == 1
# 		return false
# 	else
# 		divisor = 2
# 		while divisor <= num**(0.5) #(num/2)
# 			if num % divisor == 0
# 				return false
# 			end
# 			divisor += 1
# 		end
# 	end
# 	return true
# end

def is_prime_2(n)
	if n <= 1
		return false
	elsif n == 2 || n == 3
		return true
	elsif n % 2 == 0 || n % 3 == 0
		return false
	else
		counter = 5
		while counter*counter <= n
			if n % counter == 0 || n % (counter+2) == 0
				return false
			end
			counter += 6
		end
	end
	return true
end

def prime_list_creator(max)
	start_time = Time.new
	prime_list = [2]
	counter = 3
	while counter <= max
		# if is_prime(counter) == true
		if is_prime_2(counter) == true
			prime_list << counter
		end
		counter += 1
	end
	end_time = Time.new
	# return "calctime is #{end_time-start_time}", "length of prime_list is #{prime_list.count}"
	return prime_list
end

# p prime_list_creator((10000)*100)

def is_prime_sum()
	prime_list = prime_list_creator()



end

# NOTES
# is_prime calctime for 1MM loops is 24.624408 s with 78498 hits
# is_prime_2 calctime for 1MM loops is 2.131122 s with 78498 hits
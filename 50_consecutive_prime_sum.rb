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
	# start_time = Time.new
	prime_list = [2]
	counter = 3
	while counter <= max
		# if is_prime(counter) == true
		if is_prime_2(counter) == true
			prime_list << counter
		end
		counter += 1
	end
	# end_time = Time.new
	# return "calctime is #{end_time-start_time}", "length of prime_list is #{prime_list.count}"
	return prime_list
end

# p prime_list_creator((10000)*100)

def arr_range_sum(array_range)
	sum = 0
	array_range.each do |s|
		sum += s
	end
	return sum
end

def is_prime_sum()
	start_time = Time.new
	maxx = 1000000
	prime_list = prime_list_creator(maxx)
	largest_consec_prime_sum = 0
	longest_num_count = 0
	prime_dupe = prime_list
	win_list = []
	win_hash= {}
	while prime_dupe.empty? == false
		# p prime_dupe
		sum = 0
		num_counts = 0
		dupe_index_lo = 0
		dupe_index_hi = 1
		while dupe_index_hi <= prime_dupe.count()-1
			sum = arr_range_sum(prime_dupe[dupe_index_lo..dupe_index_hi])
			# p sum
			if is_prime_2(sum) == false
				num_counts = 0
			elsif is_prime_2(sum) == true
				num_counts = prime_dupe[dupe_index_lo..dupe_index_hi].count
				# win_hash[prime_dupe[dupe_index_lo..dupe_index_hi]] = [sum, num_counts]
				# if sum > largest_consec_prime_sum && num_counts > longest_num_count
				# 	largest_consec_prime_sum = sum
				# 	longest_num_count = num_counts
				# end
			end
			dupe_index_hi += 1
		end
		prime_dupe.shift()
	end
	largest_sum = 0
	most_consecs = 0
	win_hash.each do |key, value|
		if value[0] > largest_sum && value[0] <= maxx && value[1] > most_consecs
			largest_sum = value[0]
			most_consecs = value[1]
			# p "valye[0] is #{value[0]}"
		end
	end
	end_time = Time.new
	return "largest_sum is #{largest_sum}, most_consecs is #{most_consecs} and calctime is #{end_time-start_time}"
	# return largest_consec_prime_sum, num_counts, win_hash
end

p is_prime_sum


# 		if is_prime_2(sum) == true
# 			if sum > largest_consec_prime_sum && sum < 1000000
# 				largest_consec_prime_sum = sum
# 			end
# 			hi_index += 1
			
# 		else is_prime_2(sum) == false
# 			lo_index = 0 # marker fucked
				
# 		end
# 	end
# 	return largest_consec_prime_sum
# end

# NOTES
# is_prime calctime for 1MM loops is 24.624408 s with 78498 hits
# is_prime_2 calctime for 1MM loops is 2.131122 s with 78498 hits


################################################################################
################################################################################
################################################################################
################################################################################
################################################################################


		# while true
		# 	sum = arr_range_sum(prime_list[lo_index..hi_index])
		# 	p "sum is #{sum}"
		# 	if is_prime_2(arr_range_sum(prime_list[lo_index..hi_index])) == false
		# 		break
		# 	else
		# 		p "hi_index is #{hi_index}"
		# 		p "lo_index is #{lo_index}"
		# 		p prime_list[lo_index..hi_index]
		# 		sum = arr_range_sum(prime_list[lo_index..hi_index])
		# 		p sum
		# 		if sum > largest_consec_prime_sum && sum < 1000000
		# 			largest_consec_prime_sum = sum
		# 		end	
		# 	end		
		# 	hi_index += 1
		# end
		# lo_index += 1






	# 		sum += ele
	# 		p "sum is #{sum}"
	# 		p "num_counts is #{num_counts}"
	# 		if is_prime_2(sum) == true
	# 			num_counts += 1
	# 		elsif is_prime_2(sum) == false
	# 			num_counts = 0
	# 		end
	# 		if	num_counts > longest_num_count && sum >= largest_consec_prime_sum 
	# 			longest_num_count = num_counts
	# 			largest_consec_prime_sum = sum
	# 		end			
	# 	end
	# 	prime_dupe.shift()
	# end
# 47_distinct_primes_factors.rb


# The first two consecutive numbers
# to have two distinct prime factors are:

# 14 = 2 × 7
# 15 = 3 × 5

# The first three consecutive numbers
# to have three distinct prime factors are:

# 644 = 2² × 7 × 23
# 645 = 3 × 5 × 43
# 646 = 2 × 17 × 19.

# Find the first four consecutive
# integers to have four distinct
# prime factors. What is the first
# of these numbers?


# okey, so you start running up numbers

# then pull three at a time and run the check

# the check involves creating a prime list
# 	note though, we dont need to redo every time
# 	we can simply create a hash with the number and all of its prime factors

# 	then we do combination(4) of the prime_list and see if any of the mults == that number

# 		important!! need to check to make sure all of the factors are distinct

# 	if not, then we need a way to start raising different numbers to different powers to check
# 	starting with one at a time, then all, etc... etc...
# 	^^ this is probably the trickiest part coding wise

# no printing i want this to work



def is_prime(num)
	divisor = 2
	while divisor < num
		if num%divisor == 0
			return false
		end
		divisor += 1
	end
	return true
end

def prime_number_less_than_list_creator(num)
	less_than_prime_list = []
	potential_less_than_prime = 2
	while potential_less_than_prime < num
		if is_prime(potential_less_than_prime) == true
			less_than_prime_list << potential_less_than_prime
		end
		potential_less_than_prime += 1
	end
	return less_than_prime_list
end

# p prime_number_less_than_list_creator(100)


def arr_mult(arr, num)
	# so incoming is an array with 4 prime factors
	# we need to check to see if any combo works
	# as well as any combos with exponents
	# p "arr is #{arr}"
	arr.each do |mini_arr|
		# p "mini_arr is #{mini_arr}"
		product = mini_arr[0]*mini_arr[1]*mini_arr[2]*mini_arr[3]
		if product == num
			return true
		end

	end
	return false
end



def consec_4_prime_check(num_1,num_2,num_3,num_4, hash)
	# each number coming in and has a key and the values are lists of primes smaller than it
	# p "hash is #{hash}"
	# p "num_1 is #{num_1}"
	primes1 = hash[num_1].combination(4).to_a
	if arr_mult(primes1,num_1) == true
		primes2 = hash[num_2].combination(4).to_a
		if arr_mult(primes2,num_2) == true
			primes3 = hash[num_3].combination(4).to_a
			if arr_mult(primes3,num_3) == true
				primes4 = hash[num_4].combination(4).to_a
				if arr_mult(primes4,num_4) == true
					return true
				end
			end
		end
	else
		return false
	end
end



def num_runner()
	start_time = Time.new
	num_1 = 10
	num_2 = num_1+1
	num_3 = num_2+1
	num_4 = num_3+1
	prime_factorhash = {num_1 => prime_number_less_than_list_creator(num_1),
		num_2 => prime_number_less_than_list_creator(num_2),
		num_3 => prime_number_less_than_list_creator(num_3),
		num_4 => prime_number_less_than_list_creator(num_4)
	}
	# p prime_factorhash
	while true
		if consec_4_prime_check(num_1,num_2,num_3,num_4, prime_factorhash) == true
			end_time = Time.new # may need to be moved up
			return [num_1,num_2,num_3,num_4,"calctime is #{end_time-start_time}"]
		end

		num_1 += 1
		num_2 += 1
		num_3 += 1
		num_4 += 1

		# prime_factorhash[num_1] = prime_factorhash[num_2]
		# prime_factorhash[num_2] = prime_factorhash[num_3]
		# prime_factorhash[num_3] = prime_factorhash[num_4]
		# prime_factorhash[num_4] = prime_number_less_than_list_creator(num_4)
		prime_factorhash = {num_1 => prime_number_less_than_list_creator(num_1),
		num_2 => prime_number_less_than_list_creator(num_2),
		num_3 => prime_number_less_than_list_creator(num_3),
		num_4 => prime_number_less_than_list_creator(num_4)
			}

	end

end

p num_runner()


# ********************************************************************************  #
# ********************************************************************************  #
# ********************************************************************************  #
# ********************************************************************************  #
# ********************************************************************************  #
# ********************************************************************************  #




	# 	end
	# else
	# 	index = 0
	# 	arr_clone = arr
	# 	exponent = 2
	# 	while exponent <= 10
	# 		while index <= arr.count-1
	# 			arr_clone[0..index].map! do |ele|
	# 				p "ele is #{ele}"
	# 				ele = ele**exponent
	# 				4.times do 
	# 					shifter = arr_clone.shift()
	# 					arr_clone << shifter
	# 					product = arr_clone[0]*arr_clone[1]*arr_clone[2]*arr_clone[3]
	# 					if product == num
	# 						return true
	# 					end
	# 					# calculate produce here
	# 				end
	# 			end
	# 			index += 1
	# 		end
	# 		exponent += 1
	# 	end
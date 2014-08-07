

# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

# number doesnt necessarily need to be prime




# THE BELOW DOES NOT WORK, LET MARINATE AND THEN COME BACK

# TAKES WAAAAAAAAAY TO LONG!!

# so we have a large number and it can be found by multiplying certain
# prime numbers together

# so we could list all of the prime numbers out up until that number
# and then take combinations?  .combination returns arrays and we can call
# .max and take it from there?


# now we need to find the max prime factor

def is_prime(num)

	if num == 1
		return true
	end
	checker = 2
	while checker < num
		if num % checker == 0
			return false
		end
		checker += 1
	end
	return true
end


def arr_mult(arr)
	total = 1
	for tot in arr
		total = total*tot
	return total
	end
end

def list_prime(n)
	prime_list = []
	prime = 1
	while prime <= n
		p prime
		if is_prime(prime)
			prime_list << prime
		end
		prime += 1
	end
	return prime_list
end

def factor_finder(num)
	factor_array = []
	list_of_primes = list_prime(num)
	combo = 1
	p combo
	while combo < list_of_primes.count
		p combo
		temp_list = list_of_primes.combination(combo).to_a
			for temp in temp_list
				if arr_mult(temp) == num
					factor_array << temp.max
				end
			end
		combo += 1
	end
	return factor_array.max
end

p factor_finder(1047)




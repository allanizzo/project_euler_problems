# 35_circular_primes.rb



# The number, 197, is called a circular prime
# because all rotations of the digits: 197, 971,
# and 719, are themselves prime.

# There are thirteen such primes below 100: 2, 3, 5, 7,
# 11, 13, 17, 31, 37, 71, 73, 79, and 97.

# How many circular primes are there below one million?

def is_prime(num)
	count = 2
	while count < num
		if num%count != 0
			return false
		end
		count += 1
	end
	return true
end


def prime_list_creator(maxx)
	prime_list = []
	count = 2
	while count <= maxx
		if is_prime(count) == true
			prime_list << count
		end
		count += 1
	end
	return prime_list
	# creates list of primes up to max loop (in this case 1,000,000)
end

def is_circular(num)


end

def looper()
	max = 1000000
	prime list = prime_list(max)
# calls is_circular

end 



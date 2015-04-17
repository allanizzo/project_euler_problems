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
		if num%count == 0
			return false
		end
		count += 1
	end
	return true
end

p is_prime(11)


def prime_list_creator(maxx)
	prime_list = []
	count = 2
	while count <= maxx
		if count%10000 == 0
			p count
		end
		if is_prime(count) == true
			prime_list << count
		end
		count += 1
	end
	return prime_list
	# creates list of primes up to max loop (in this case 1,000,000)
end

# p prime_list_creator(1000000)

def is_circular(num, list)
	num_string = num.to_s
	string_length = num_string.length
	count = 0
	while count < string_length
		first_char = num_string[0]
		num_string = num_string[1..-1]
		num_string << first_char
		if list.include?(num_string)
			return true
		end
		count += 1
	end
	return false
end

def looper()
	max = 1000000
	prime_list = prime_list_creator(max)
	count = 2
	circular_list = []
	prime_list.each do |potential_circular|
		if is_circular(potential_circular, prime_list) == true
			circular_list << potential_circular
		end
	end
	p circular_list.count
	return circular_list
end 

p looper()

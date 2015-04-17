# 35_circular_primes.rb


# The number, 197, is called a circular prime
# because all rotations of the digits: 197, 971,
# and 719, are themselves prime.

# There are thirteen such primes below 100: 2, 3, 5, 7,
# 11, 13, 17, 31, 37, 71, 73, 79, and 97.

# How many circular primes are there below one million?


def num_checker(num)
	if num == 2 || num == 3 || num == 5
		return true
	elsif num.to_s.include?("0")
		return false
	elsif num.to_s.include?("2")
		return false
	elsif num.to_s.include?("4")
		return false
	elsif num.to_s.include?("5")
		return false
	elsif num.to_s.include?("6")
		return false
	elsif num.to_s.include?("8")
		return false
	else
		return true
	end
end

def num_creator(max)
	# basically, none of the numbers can contain, 0,2,4,5,6,8 as they will wind up on the end
	count = 2
	num_list = []
	while count < max
		if num_checker(count) == true	
			num_list<<count
		end
		count += 1
	end
	return num_list
end

# p num_creator(1000000)

def is_prime(num)
	if num == 2 || num == 3 || num == 5
		return true
	elsif num.even? == true || num.to_s[-1] == "0" || num.to_s[-1] == "5" #|| num.to_s[-1] != "3" || num.to_s[-1] != "1" || num.to_s[-1] != "7" || num.to_s[-1] != "9"
		return false
	else
		count = 3
		while count < num
			if num%count == 0
				return false
			end
			count += 2
		end
	end
	return true
end

# p is_prime(11)


def potential_number_creator(maxx)
	prime_list = []
	count = 2
	num_list = num_creator(maxx)
	# while count <= maxx
	# 	if count%10000 == 0
	# 		p count
	# 	end
	# 	if is_prime(count) == true
	# 		prime_list << count
	# 	end
	# 	count += 1
	# end
	# return prime_list
	num_list.each do |num|
		if is_prime(num) == true
			prime_list << num
		end
	end
	return prime_list
end

# p potential_number_creator(1000000)
# 
def is_circular(num)#, list)
	num_string = num.to_s
	string_length = num_string.length
	# p string_length
	count = 0
	while count < string_length
		first_char = num_string[0]
		num_string = num_string[1..-1]
		num_string << first_char
		# p num_string
		if is_prime(num_string.to_i) == false
			return false
		end
		count += 1
	end
	return true
end

# p is_circular(996361)
# p is_circular(998443)
# p is_circular(999917)

def looper()
	max = 1000000
	prime_list = potential_number_creator(max)
	circular_list = []
	prime_list.each do |potential_circular|
		if is_circular(potential_circular)==true# , prime_list) == true
			circular_list << potential_circular
		end
	end
	# p circular_list.count
	return circular_list.count
end 

p looper()

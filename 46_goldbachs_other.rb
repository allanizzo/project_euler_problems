# 46_goldbachs_other.rb



# It was proposed by Christian Goldbach
# that every odd composite number can be
# written as the sum of a prime and twice a square.

# 9 = 7 + 2×1**2
# 15 = 7 + 2×2**2
# 21 = 3 + 2×3**2
# 25 = 7 + 2×3**2
# 27 = 19 + 2×2**2
# 33 = 31 + 2×1**2

# It turns out that the conjecture was false.

# What is the smallest odd composite that
# cannot be written as the sum of a prime
# and twice a square?



# so is this bad boy brute forceable?
# yes of course, how to make it fast?

# so start with odd composite numbers


def is_prime(num)
	divisor = 2
	while divisor < num
		if num % divisor == 0
			return true
		end
	end
	return false
end

# def square_list(number)
# 	square_list = []
# 	num_to_be_squared = 1
# 	count = 1
# 	while num_to_be_squared < number
# 		num_to_be_squared = count**2
# 		if num_to_be_squared >= number
# 			return square_list.reverse
# 		end
# 		square_list << num_to_be_squared
# 		count += 1
# 	end
# 	return square_list.reverse
# end

# p square_list(100)

def is_prime(number)
	prime_list = []
	divisor = 2
	while divisor < number
		if number%divisor == 0
			return false
		end
		divisor += 1
	end
	return true
end

def prime_list_creator(number)
	prime_list = []
	(1..number).each do |num|
		if is_prime(num) == true
			prime_list << num
		end
	end
	return prime_list.reverse
end

def sum_prime_square(number)
	prime_list = prime_list_creator(number)
	# p prime_list
	num_to_be_squared = 1
	prime_list.each do |p|
		diff = number - p
		(1..diff).each do |d|
			if ((d**2)*2) + p == number
				return true
			end
		end
	end
	return false
end
# p square_list(33)
# p prime_list_creator(33)
# p sum_prime_square(9)
p is_prime(5777)

def compositor()
	start_time = Time.new
	count = 9
	while true
		end_time = Time.new
		# here is where we test if the square prime sume == true
		# and if so, return the right values
		if is_prime(count) == false
			if sum_prime_square(count) == false
				return count, (start_time - end_time)
				break
			end
		end
		if count %1001 == 0
			p count
		end
		count += 2
	end
	
end

p compositor

# answer is 5777?		

# 43_sub_string_divisibility.rb



# The number, 1406357289, is a 0 to 9 pandigital
# number because it is made up of each of the
# digits 0 to 9 in some order, but it also has
# a rather interesting sub-string divisibility
# property.

# Let d1 be the 1st digit, d2 be the 2nd digit,
# and so on. In this way, we note the following:

#     d2d3d4=406 is divisible by 2
#     d3d4d5=063 is divisible by 3
#     d4d5d6=635 is divisible by 5
#     d5d6d7=357 is divisible by 7
#     d6d7d8=572 is divisible by 11
#     d7d8d9=728 is divisible by 13
#     d8d9d10=289 is divisible by 17

# Find the sum of all 0 to 9 pandigital numbers
# with this property.

def prime_dict()
	list_of_primes = [2,3,5,7,11,13,17]
	prime_dict = {}
	(3..9).each do |p|
		prime_dict[p] = list_of_primes[p-3]
	end
	return prime_dict
end

def perm_checker(list, dictionary)
	# p dictionary
	index_lo = 1 # 2nd digit
	index_hi = 3 # 4th digit
	while index_hi <=9
		# p list[index_lo..index_hi].join().to_i
		if list[index_lo..index_hi].join().to_i % dictionary[index_hi] != 0
			return false
		end
		index_lo += 1
		index_hi += 1
	end
	return true
end

# p perm_checker([1,4,0,6,3,5,7,2,8,9],prime_dict())


def permuterizer()
	prime_dict = prime_dict()
	perm = [0,1,2,3,4,5,6,7,8,9]
	good_perms = []
	list_of_perms = perm.permutation(10).to_a
	# p list_of_perms
	# list_of_perms will have all combinations of 0-9 pandigitals
	list_of_perms.each do |perm1|
		# p "perm1 is #{perm1}"
		# perm1.each do |perm2|
			# p "perm2 is #{perm2}"
			if perm_checker(perm1, prime_dict) == true
				good_perms << perm1.join().to_i
			end
		# end
	end
	# return good_perms
	sum = 0
	good_perms.each do |ans|
		sum = sum + ans
	end
	return sum
end

p permuterizer

# def summer()
# 	list_of_answers = permuterizer
# 	sum = 0
# 	list_of_answers.each do |ans|
# 		sum += ans
# 	end
# 	p "sum is #{sum}"
# 	return sum
# end

# p summer










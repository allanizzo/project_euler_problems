# 49_prime_permutations.rb


# The arithmetic sequence, 1487, 4817, 8147, 
# in which each of the terms increases by 3330,
# is unusual in two ways: (i) each of the three
# terms are prime, and, (ii) each of the 4-digit
# numbers are permutations of one another.

# There are no arithmetic sequences made up of
# three 1-, 2-, or 3-digit primes, exhibiting
# this property, but there is one other 4-digit
# increasing sequence.

# What 12-digit number do you form by concatenating
# the three terms in this sequence?


# me thinks we can start by

# - listing all of the prime 4 digit numbers
# - this is contained in a list
# - then we check to see if the permutations exist
# - num.permutation(4) and see if its elsewhere in the list
# - if the differences between them are airthmetic, then were good
# - return the number

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

def four_dig_prime_creator()
	prime_list = []
	(1000..1100).each do |num|
		if is_prime(num) == true
			prime_list << num
		end
	end
	return prime_list
end

def string_converter(num)
	# 123455
	list = []
	num = num.to_s
	num.each_char do |char|
		list << char.to_i
	end
	return list
end

def joiner(array)
	new_arr = []
	numstring = ""
	array.each do |m|
		# p m.to_s
		numstring << m.to_s
	end
	return numstring.to_i
end


def permutation_checker()
	prime_list = four_dig_prime_creator()
	p prime_list
	perm_list = []
	prime_list.each do |element|
		perm_list << string_converter(element).permutation(4).to_a
	end
	clean_list = []
	perm_list.each do |p|
		p.each do |j|
			clean_list << j
		end
	end

	clean_list.map! do |jiggler|
		joiner(jiggler)
	end

	return clean_list
end
p permutation_checker

		# perm_list = element


	# use .index
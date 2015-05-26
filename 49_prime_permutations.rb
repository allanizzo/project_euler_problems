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

def string_converter(num)
	# 123455
	list = []
	num = num.to_s
	num.each_char do |char|
		list << char.to_i
	end
	return list
end

def sequence_adder(addition,num)
	arr = [num]
	2.times do 
		arr << arr.last+addition
	end
	return arr
end

# p sequence_adder(1,3)

def is_prime_array(array)
	array.each do |ele|
		if is_prime(ele) == false
			return false
		end
	end
	return true
end

def permutation_jawns(array)
	# checks to see if the terms are permutations of one another
	array.each do |onefittyone|
		if is_prime(onefittyone) == false
			return false
		end
	end
	first_perm = string_converter(array[0])
	first_perm = first_perm.permutation(4).to_a # list of all the permutations of the first ##
	# p "first_perm is #{first_perm}"
	# p "string converter is #{string_converter(array[1])}"
	# p "string converter is #{string_converter(array[2])}"
	if first_perm.include?(string_converter(array[1])) == true && first_perm.include?(string_converter(array[2])) == true
		return true
	else
		return false
	# p array
	end
end

def brute_force_1()
	start_time = Time.new
	anser_list = []
	max = 9999
	(1000..max).each do |num|
		addition  = 3330
		if is_prime(num) == false
			next
		end
		while addition <= max#/addition
			seq = sequence_adder(addition,num)
			# check seq here
			# p permutation_jawns(seq)
			if permutation_jawns(seq) == true
				p "bootywhop"
				anser_list << seq
			end
			# p seq
			addition += 3330
			# sleep(1)
		end
	end
	actual_anser_list = []
	anser_list.each do |imgladiputsunscreenontoday|
		sun_string = ""
		imgladiputsunscreenontoday.each do |ididntgettooburned|
			sun_string << ididntgettooburned.to_s
		end
		actual_anser_list << sun_string
	end


	end_time = Time.new
	return "time is #{(end_time-start_time)}", anser_list, actual_anser_list
end

p brute_force_1

def straight_deezy()
end


# def joiner(array)
# 	new_arr = []
# 	numstring = ""
# 	array.each do |m|
# 		# p m.to_s
# 		numstring << m.to_s
# 	end
# 	return numstring.to_i
# end


# def permutation_checker()
# 	prime_list = four_dig_prime_creator()
# 	p prime_list
# 	# perm_list = []
# 	perm_hash = {}
# 	prime_list.each do |element|
# 		# perm_list << string_converter(element).permutation(4).to_a
# 		perm_hash[element] = string_converter(element).permutation(4).to_a
# 	end


		
# 	# p perm_hash	

# 	# clean_list = []
# 	# perm_list.each do |p|
# 	# 	p.each do |j|
# 	# 		clean_list << j
# 	# 	end
# 	# end

# 	# clean_list.map! do |jiggler|
# 	# 	joiner(jiggler)
# 	# end

# 	# return clean_list
# end

# permutation_checker

		# perm_list = element


	# use .index
# 41_pandigital_primes.rb



# We shall say that an n-digit number is
# pandigital if it makes use of all the
# digits 1 to n exactly once. For example,
# 2143 is a 4-digit pandigital and is also prime.

# What is the largest n-digit pandigital
# prime that exists?

# so the biggest possible 987654321

def is_prime(num)
	divisor = 2
	while divisor <= num/2
		if num % divisor == 0
			return false
		end
		divisor += 1
	end
	return true
end

# def p_list_creator()
# 	list = [2]
# 	mow = 3
# 	while mow < 987654321
# 		if mow % 10000 == 0
# 			p mow
# 		end
# 		if is_prime(mow) == true
# 			list << mow
# 		end
# 		mow += 2
# 	end
# end
# p p_list_creator

# p is_prime(987654321)
# p is_prime(5666)

def pandigidictcreator()
	ref_dict = {}
	(1..9).each do |num|
		second_dict = {}
		(1..num).each do |num2|
			second_dict[num2] = 0
		end
		ref_dict[num] = second_dict
	end
	return ref_dict
end
# p pandigidictcreator

def is_pandigital(num, dictionary)
	# p num
	num_string = num.to_s
	# p num_string
	if num_string.include?("0")== true
		return false
	end
	n = num_string.length
	num_string.each_char do |char|
		if char == nil
			return false
		elsif dictionary[n][char.to_i] == nil
			return false
		end
		dictionary[n][char.to_i] += 1
	end
	dictionary[n].each do |key,value|
		if value > 1
			return false
		end
	end
	return true
	# return dictionary
end

# p is_pandigital((999),pandigidictcreator())

# def listcreator()
	#so here we make a list of the max possible numbers
	# 1, 21, 321,4321 etc... until 987654321 54321

	# 1234
	# 1243
	# 1324
	# 1342
	# 1423




# def num_creator()
# 	largest = 0
# 	(999..987654321).each do |num|
# 		pandictionary = pandigidictcreator()
# 		if num % 10000 == 0
# 			p num
# 		end
# 		# if is_pandigital(num,pandictionary) == true
# 			if is_prime(num)== true && num > largest
# 				largest = num
# 			end
# 		# end
# 	end
# 	return largest
# end

# p num_creator

def num_creator_2()
	list_of_pandigs = [1,21,321,4321,54321,654321,7654321,87654321,987654321]
	list_of_all_permutations = []

	list_of_pandigs.each do |pandig|
		temp_list = []
		pandig.to_s.each_char do |char|
			temp_list << char.to_i
			list_of_all_permutations << temp_list.permutation(temp_list.count).to_a
		end
	end
	clean_list = []

	list_of_all_permutations.each do |perm|
		perm.each do |perm2|
			# if is_pandigital(perm2, pandigidictcreator()) == true
				clean_list << perm2.join()
			# end
		end
		# p perm
	end
	return clean_list
end

def scrubber(num_string)
	# p num_string[-1]
	if num_string[-1] == "2"
		return false
	elsif num_string[-1] == "4"
		return false
	elsif num_string[-1] == "6"
		return false 
	elsif num_string[-1] == "8"
		return false
	else
		return true
	end
end

def ai_the_answer()
	clean_list_of_pandigs = num_creator_2()
	# p clean_list_of_pandigs
	scrubbed_list = []
	largest = 0
	clean_list_of_pandigs.each do |potential_ai_the_answer|
		# p potential_ai_the_answer
		if scrubber(potential_ai_the_answer) == true && is_pandigital(potential_ai_the_answer.to_i,pandigidictcreator()) == true
			scrubbed_list << potential_ai_the_answer
		end	
	end
	# p scrubbed_list
	scrubbed_list.each do |item|
		if is_prime(item.to_i) == true && item.to_i > largest
			largest = item.to_i
			p "largest is #{largest}"
		end
	end
	return largest
	# return scrubbed_list
end

# p num_creator_2()
p ai_the_answer()
# p scrubber()
# p is_prime(974526381) == false

# ITS TELLING ME THE ANSWER IS 7652413














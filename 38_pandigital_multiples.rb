# 38_pandigital_multiples.rb



# Take the number 192 and multiply it by each of 1, 2, and 3:

#     192 × 1 = 192
#     192 × 2 = 384
#     192 × 3 = 576

# By concatenating each product we get the 1 to 9 pandigital, 192384576.
# We will call 192384576 the concatenated product of 192 and (1,2,3)

# The same can be achieved by starting with 9 and multiplying by
# 1, 2, 3, 4, and 5, giving the pandigital, 918273645, which is the
# concatenated product of 9 and (1,2,3,4,5).

# What is the largest 1 to 9 pandigital 9-digit number that can
# be formed as the concatenated product of an integer with (1,2, ... , n) where n > 1?


def pandigichecker(string)
	# check to see if incoming list is pandigital
	if string.include?("0")
		return false
	elsif 			
		pandigidict = {
			"1"=>0,
			"2"=>0,
			"3"=>0,
			"4"=>0,
			"5"=>0,
			"6"=>0,
			"7"=>0,
			"8"=>0,
			"9"=>0
		}
		string.each_char do |checker|
			pandigidict[checker] += 1
		end
		# p pandigidict
		pandigidict.each do |key, value|
			# p key
			# p value
			if value != 1
				return false
			end
		end
	end
	return true
end

# p pandigichecker([0,1,2,3,4,5,6,7,8,9])


def pandigimultiplier(num,list)
	# incoming list [1,2,3,4]
	pandigilist = ""
	list.each do |multiplier|
		pandigilist << (multiplier*num).to_s
	end
	return pandigilist
end

def concatenator(max)
	pandigilist = []
	integer = 1
	#[1,2,3] etc...
	while integer < max
		# integer is to be multiplied by the paren integers
		paren_integers = []
		paren_count = 1
		while paren_count < 10
			paren_integers << paren_count
			potential_pandigital = pandigimultiplier(integer,paren_integers).to_s
			if pandigichecker(potential_pandigital) == true
				pandigilist << potential_pandigital
			end
			if paren_integers[-1] == 9
				paren_integers = []
				paren_count = 1
				break
			end
			paren_count += 1
		end
		integer += 1
	end
	return pandigilist
end

def largest_pandigital()
	max = 1000000
	list_of_potential_largest = concatenator(max)
	largest = 0
	count = 0
	list_of_potential_largest.each do |potential_largest|
		if potential_largest.to_i > largest
			largest = potential_largest.to_i
			p "largest has been replaced with #{largest}"
		end
		# count += 1
	end
	return largest
end

# p concatenator
p largest_pandigital()
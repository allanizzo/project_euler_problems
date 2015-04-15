# 33_digit_cancelling_fractions.rb

# The fraction 49/98 is a curious fraction, as an inexperienced mathematician
# in attempting to simplify it may incorrectly believe that 49/98 = 4/8, which is
# correct, is obtained by cancelling the 9s.

# We shall consider fractions like, 30/50 = 3/5,
# to be trivial examples.

# There are exactly four non-trivial examples of this type of fraction,
# less than one in value, and containing two digits in the numerator and denominator.

# If the product of these four fractions is given in its lowest common terms,
# find the value of the denominator.


# so we are just looking for numbers where
# - the same non-zero number is in the numerator and denominator
# - the initial number reduces down to where the non-zero number "goes away" 
# - everything is still mathmatically correct

# def splitter(num_string,denom_string)
# 	if num_string.length == 1 && denom_string.length == 1

# 	elsif num_string.length == 1 && denom_string.length == 2

# 	elsif num_string.length == 2 && denom_string.length == 1

# 	else

# 	end

# end

def reducer(numerator,denominator)
	# in goes a fraction
	base_answer = numerator/denominator.to_f
	num_string = numerator.to_s
	denom_string = denominator.to_s

	if num_string[1] == denom_string[0]
		num_string = num_string[0]
		denom_string = denom_string[1]
		if num_string.to_f/denom_string.to_f == base_answer
			return true
		end
	end
	return false
end



def fraction_creator()
	list_of_denominators = []
	numerator = 10
	denominator = 10

	while denominator < 100

		if reducer(numerator,denominator) == true
			list_of_denominators << [numerator,denominator]
		end

		if numerator == 100
			denominator += 1
			numerator = 10
		end
		numerator += 1
	end
	# here we create the loops for the numerator and denominator
	# by calling reducer and if true, adding to list
	# and returning the answer
	return list_of_denominators
end

p fraction_creator
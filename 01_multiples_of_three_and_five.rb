

# time taken => 5:59.3 

# Find the sum of all the multiples of 3 or 5 below 1000.

def multiple_checker()
	sum = 0
	multiple_index = 0
	while multiple_index < 1000

		if (multiple_index % 3 == 0) || (multiple_index % 5 == 0) 
			sum = sum + multiple_index
		end
		multiple_index += 1
		p multiple_index
		p sum
	end
	return sum
end

# things we learned
# - are there repeats? NO
# - cant return without a defined method
# - case of 15, evaluates the % 3 part, doesnt need to go to the %5 part

p multiple_checker




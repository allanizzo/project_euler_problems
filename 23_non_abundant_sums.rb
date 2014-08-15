# time taken - mad long, look to end for recap

# why did we have to impose the second limit for sums over the limit from the problem?
# shouldnt your code have covered for this?

# SOLVED


# A perfect number is a number for
# which the sum of its proper divisors
# is exactly equal to the number. For
# example, the sum of the proper divisors
# of 28 would be 1 + 2 + 4 + 7 + 14 = 28,
# which means that 28 is a perfect number.

# A number n is called deficient if the sum
# of its proper divisors is less than n and
# it is called abundant if this sum exceeds n.

# As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16,
# the smallest number that can be written as the sum of two abundant
# numbers is 24. By mathematical analysis, it can be shown that all
# integers greater than 28123 can be written as the sum of two
# abundant numbers. However, this upper limit cannot be reduced
# any further by analysis even though it is known that the greatest
# number that cannot be expressed as the sum of two abundant
# numbers is less than this limit.

# Find the sum of all the
# positive integers which cannot
# be written as the sum of two abundant numbers.



def arr_sum(arr)
	sum = 0

	arr.each do |ele|
		sum += ele
	end
	return sum
end


def stack_add(arr) # this returns the array of all possible sums
	array_of_all_possible_sums = []
	num_loops = arr.count
	counter = 0					# of two elements
	num_loops.times do

		first_element = arr[0]

		if counter % 1000 == 0
			p counter
		end
		
		for num in arr
			temp_sum = 0
			temp_sum = first_element + num
			if temp_sum < 28123
				array_of_all_possible_sums << temp_sum
			end
		end
		element_to_add = arr.shift
		arr << element_to_add
		counter += 1
	end
	return array_of_all_possible_sums.uniq.sort  # so we have an array of all the possible sums of 
end

def abundant_maker()
	abundant_array = []
	(1..28123).each do |number|
		if number % 1000 == 0
			p number
		end
		base = 1
		sum = 0
		while base < number
			if number % base == 0
				sum += base
			end
			base += 1
		end
		if sum > number
			abundant_array << number
		end
	end
	return abundant_array
end


def abundant_sum_II()



end

# p abundant_sum_II


abun1 = abundant_maker()

# p abun1

stack_madness = stack_add(abun1)

# p stack_madness


madness_array = []

(1..stack_madness.max).each do |stackadeezy|
	if stack_madness.include?(stackadeezy) == false
		madness_array << stackadeezy
	end
end

# p madness_array

madness_sum = arr_sum(madness_array)

p "madness sum is #{madness_sum}"
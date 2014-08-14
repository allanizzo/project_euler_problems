


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





# SEE BELOW::








# non_abundant_sums.rb

# what i would do this this,

# create a master array of abundant numbers

# then create an array of digits up to 28123 (including it)

# subtract the abundant array from the master array

# sum those numbers

# def arr_sum(arr)
# 	sum = 0

# 	arr.each do |ele|
# 		sum += ele
# 	end
# 	return sum
# end


# def stack_add(arr) # this returns the array of all possible sums
# 	array_of_all_possible_sums = []
# 	num_loops = arr.count
# 	counter = 0					# of two elements
# 	num_loops.times do
# 		if counter % 1000 == 0
# 			p counter
# 		end
# 		element_to_add = arr.shift
# 		for num in arr
# 			temp_sum = 0
# 			temp_sum = element_to_add + num
# 			array_of_all_possible_sums << temp_sum
# 		end
# 		arr << element_to_add
# 		counter += 1
# 	end
# 	return array_of_all_possible_sums
# end

# def abundant_maker()
# 	abundant_array = []
# 	(1..28123).each do |number|
# 		if number % 1000 == 0
# 			p number
# 		end
# 		base = 1
# 		sum = 0
# 		while base < number
# 			if number % base == 0
# 				sum += base
# 			end
# 			base += 1
# 		end
# 		if sum > number
# 			abundant_array << number
# 		end
# 	end
# 	return abundant_array
# end

# # p abundant_maker

# # def abundant_sum()
# # 	sum_array = []
# # 	abundant_array = abundant_maker()

# # 	combo_array = abundant_array.combination(2).to_a
# # 	p combo_array
# # 	for combo in combo_array

# # 		sum_array << arr_sum(combo)
# # 	end
# # 	return sum_array
# # end

# def abundant_sum_II()
# 	sum_array = abundant_maker()

# 	list_of_sums = stack_add(sum_array)

# 	max = list_of_sums.uniq.max

# 	array_to_return = []

# 	(1..max).each do |num|
# 		array_to_return << num
# 	end
# 	result = arr_sum(array_to_return - (list_of_sums.uniq))
# 	puts "arr sum is #{result}"
# 	return result
# end

# p abundant_sum_II

# # p abundant_sum

# # other way to add is to use the abundant_array as a stack
# time taken < 5 mins

# solved!


# Factorial digit sum
# Problem 20
# Published on 21 June 2002 at 06:00 pm [Server Time]

# n! means n × (n − 1) × ... × 3 × 2 × 1

# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is :

# 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!

def factorial(n)
	if n == 1
		return 1
	else
		return n * factorial(n-1)
	end
end

# p factorial(100)

def digit_sum(num)
	sum = 0
	num_string = num.to_s
	num_string.each_char do |char|
		sum += char.to_i
	end
	return sum
end

p digit_sum(factorial(100))

# what did we learn here?
# - just want to take a minute on recursion
# 	^ you are taking a number and then multiplying it by the
# 	same function with a new input that incrementally (recursively)
# 	gets it close to the base case
# 	^ since you know that 1! == 1 , that is a very explicit base case
# 	from which you can base your recursive process on.
# 	^ remember, when you call the reursive function with a new argument,
# 	IT MUST BE GETTING CLOSER TO THE BASE CASE
# 	^ you can also have multiple base cases and call the function more than
# 	once with different arguments (as long as they are headed towards the
# 	base case)
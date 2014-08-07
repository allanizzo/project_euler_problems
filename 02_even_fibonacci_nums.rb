
# time taken 16:58.4

	# too long!

#goal is to find the sum of all of the even fibonacci numbers under 4,000,000

# first need to list off all the terms less than 4,000,000

def fibo_list(max)
	fibo_array = [1,2]
	new_sum = 0
	while fibo_array.last < max # could use .max in a pinch
		new_sum = fibo_array[-1]+fibo_array[-2]
		fibo_array << new_sum 
	end
	fibo_array.pop # this is real clunky right here
	sum_total = 0
	for sum in fibo_array
		if sum.even?
			sum_total += sum
		end
	end
	return sum_total
end

p fibo_list(4000000)


# def fibo(n)
# 	if n == 1
# 		return 1
# 	elsif n == 2
# 		return 2
# 	end
# 	fibo(n-1)+fibo(n-2)
# end
# p fibo(40)

what did we learn here? / recap?
- pay attention to what your loops are doing
	^ in this problem you meet the condition for the while loop 
	and then it adds another element to the array that ISN'T less than the max
	number, then it checks again and stops
- you didn't read into the question correctly the first time, you blindly went into the
recursive fibo sequence rather than understand what the question was specifically asking.
This wasted time.  17 minutes is too long for this problem.
- you returned the wrong thing at first sum rather than sum_total, you must be focused
on these kinds of basics






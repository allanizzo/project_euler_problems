# 36_double_base_palindromes.rb

# The decimal number, 585 = 1001001001 sub2 (binary),
# is palindromic in both bases.

# Find the sum of all numbers, less than one
# million, which are palindromic in base 10 and base 2.

# (Please note that the palindromic number,
# in either base, may not include leading zeros.)


def base_two_converter(num)
	#585
	binary_string = ""
	while num != 0
		div = num/2
		# p num
		binary_string << (num%2).to_s
		num = div
	end
	return binary_string
end

# p base_two_converter(585)

def is_panindrome(num)
	num = num.to_s
	# handles greater than 9
	while num.length > 1
		first = num[0]
		last = num[-1]
		if first != last
			return false
		end
		num = num[1...-1]
	end
	return true
end

# p is_panindrome("5885")

def summer(list)
	sum = 0
	list.each do |sumsummesucky|
		sum += sumsummesucky
	end
	return sum
end

def looper()
	max = 1000000
	count = 0
	palindrome_list = []
	while count <= max 
		if is_panindrome(base_two_converter(count)) == true && is_panindrome(count) == true
			palindrome_list << count
		end
		count += 1
	end
	return summer(palindrome_list)
end

p looper()

#872187
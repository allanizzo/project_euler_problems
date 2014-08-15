# Euler discovered the remarkable quadratic formula:

# n² + n + 41

# It turns out that the formula will produce 40 primes
# for the consecutive values n = 0 to 39. However, when
# n = 40, 402 + 40 + 41 = 40(40 + 1) + 41 is divisible by
# 41, and certainly when n = 41, 41² + 41 + 41 is
# clearly divisible by 41.

# The incredible formula  n² − 79n + 1601 was discovered,
# which produces 80 primes for the consecutive values
# n = 0 to 79. The product of the coefficients, −79 and 1601, is −126479.

# Considering quadratics of the form:

# n² + an + b, where |a| < 1000 and |b| < 1000

# where |n| is the modulus/absolute value of n

# e.g. |11| = 11 and |−4| = 4

# Find the product of the coefficients, a and b, 
# for the quadratic expression that produces the
# maximum number of primes for consecutive
# values of n, starting with n = 0.


# n² + an + b, where |a| < 1000 and |b| < 1000


# ok so word

# we start with n at 0 and let it ride
# then we need to check different coefficients
# brute force stack style?

def prime_check(num)
	base = 2
	while base < num
		if num % base == 0
			return false
		end
		base += 1
	end
	return true
end


def quadratic_primes()

	# we either use a or b as the terminating condition
	consec_prime_list = []

	best_a = nil
	best_b = nil

	(-999..999).each do |a|

		# n = 0

		(-999..999).each do |b|
			# p "a is #{a} and b is #{b}"
			n = 0
			temp_consec_primes = []
			while true
				# p prime_check((n**2) + (a.abs)*n + b.abs)
				# sleep 0.6
				if prime_check((n**2) + (a.abs)*n + b.abs) == false
					break
				else	
					temp_consec_primes << n
					n += 1
				end
				if temp_consec_primes.count > consec_prime_list.count

					consec_prime_list = temp_consec_primes
					best_a = a
					best_b = b
			# coeff_product = a*b

				end
				# p temp_consec_primes
				# p "temp_consec_primes.count is #{temp_consec_primes.count}" #this counts the consecutive primes
			end
		end

		# p temp_consec_primes

		# then do something to multiply the coefficients together
	end
	# return coeff_product
	return "best_a is #{best_a} and best_b is #{best_b} and the product is #{best_b*best_a}"
	
end

p quadratic_primes()

# p prime_check(8)

# n = 0
# a = 1
# b = 1
# 15.times do 
# 	p prime_check((n**2) + (a.abs)*n + b.abs)

# end
# 46_goldbachs_other.rb



# It was proposed by Christian Goldbach
# that every odd composite number can be
# written as the sum of a prime and twice a square.

# 9 = 7 + 2×1**2
# 15 = 7 + 2×2**2
# 21 = 3 + 2×3**2
# 25 = 7 + 2×3**2
# 27 = 19 + 2×2**2
# 33 = 31 + 2×1**2

# It turns out that the conjecture was false.

# What is the smallest odd composite that
# cannot be written as the sum of a prime
# and twice a square?



so is this bad boy brute forceable?
yes of course, how to make it fast?

so start with odd composite numbers

def is_prime(num)
	divisor = 2
	while divisor < num
		if num % divisor == 0
			return true
		end
	end
	return false
end

def compositor()
	count = 9
	while true


		count += 2
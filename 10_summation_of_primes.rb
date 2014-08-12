
#SOLVED

# ANSWER IS 142913828922

# summation of primes

# find the sum of all primes below two million


def summation(max)
	sum = 0
	counter = 2
	while counter < max
		p "counter is #{counter}"
		if isprime?(counter)
			sum += counter
		end
		counter += 1
	end
	return sum
end


def isprime?(num)
	if num == 2
		return true
	end
	counter = 2
	while counter < num
		if num % counter == 0
			return false
		end
		counter += 1
	end
	return true
end


p summation(2000000)


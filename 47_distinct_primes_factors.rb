# 47_distinct_primes_factors.rb


# The first two consecutive numbers
# to have two distinct prime factors are:

# 14 = 2 × 7
# 15 = 3 × 5

# The first three consecutive numbers
# to have three distinct prime factors are:

# 644 = 2² × 7 × 23
# 645 = 3 × 5 × 43
# 646 = 2 × 17 × 19.

# Find the first four consecutive
# integers to have four distinct
# prime factors. What is the first
# of these numbers?


okey, so you start running up numbers

then pull three at a time and run the check

the check involves creating a prime list
	note though, we dont need to redo every time
	we can simply create a hash with the number and all of its prime factors

	then we do combination(4) of the prime_list and see if any of the mults == that number

		important!! need to check to make sure all of the factors are distinct

	if not, then we need a way to start raising different numbers to different powers to check
	starting with one at a time, then all, etc... etc...
	^^ this is probably the trickiest part coding wise

no printing i want this to work




def num_runner()
	start_time = Time.new
	num_1 = 1
	num_2 = 2
	num_3 = 3
	num_4 = 4
	anser_list = []
	while true
		#we break and return when 4 consecutive numbers have distinct prime factors

		if consec_4_prime_check(num_1,num_2,num_3,num_4) == true
			end_time = Time.new
			return [num_1,num_2,num_3,num_4,("calctime is #{end_time-start_time}")]
		end

		num_1 += 1
		num_2 += 1
		num_3 += 1
		num_4 += 1
	end

end

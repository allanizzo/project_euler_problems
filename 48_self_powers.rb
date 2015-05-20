# 48_self_powers.rb




# The series, 1**1 + 2**2 + 3**3 + ... + 10**10 = 10405071317.

# Find the last ten digits of the series
#  1**1 + 2**2 + 3**3 + ... + 1000**1000.


def powerizer()
	big_string = "" # this number could easily be too large
	big_num = 0
	(1..1000).each do |num|
		big_num += (num**num)
	end
	big_string = big_num.to_s
	p big_string
	return big_string[-10..-1]
end

p powerizer
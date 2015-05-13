# 40_champernownes_constant.rb



# An irrational decimal fraction is created by
# concatenating the positive integers:

# 0.123456789101112131415161718192021...

# It can be seen that the 12th digit of the
# fractional part is 1.

# If dn represents the nth digit of the fractional part,
# find the value of the following expression.

# d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000


def champernownernumcreator()
	max = 1000000
	num_string = ""
	count = 1
	while count <= max
		num_string << count.to_s
		count += 1
	end
	return num_string
end
# p champernownernumcreator()

def indexer()
	num_list = []
	num_string = champernownernumcreator
	index = 1
	while index <= 1000000
		num_list << num_string[index-1]
		index = index*10
	end
	p "num_list is #{num_list}"
	product = 1
	num_list.each do |mult|
		product = product*mult.to_i
	end
	return product
end


p indexer





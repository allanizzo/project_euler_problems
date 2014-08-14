# alright

# def string_check(string, key)
# 	string_hash = {}
# 	string.each_char do |char|
# 		if string_hash[char] == nil
# 			string_hash[char] = 1
# 		else
# 			string_hash[char] += 1
# 		end
# 	end
# 	return string_hash[key]	
# end



def generator()
	billy = File.new("giant_array.txt", "w+")
	uniq_array = []

	start = %w[R R R R R R R R R R R R R R R R R R R R
				D D D D D D D D D D D D D D D D D D D D]

	# start = %w[R R D D]
									
	basher = 0
	while basher <= 25000000
		# p "basher is #{basher}"
		if basher % 1000000 == 0
			p "basher is #{basher}"
			p "eggplants"
		end
		temp_arr = start.shuffle
		# uniq_array << temp_arr
		billy << temp_arr

		# File.open("giant_array.txt", "w+") do |i|
		# 	i.write(temp_arr)
		# end

		# uniq_array << temp_arr
		# p temp_arr
		# if uniq_array.include?(temp_arr) == false
		# 	# puts "eggplants doo doo"
		# 	uniq_array << temp_arr
		# end
		# File.write("giant_array.txt", uniq_array)
		basher += 1
		# p uniq_array
	end
	# mow_mow = File.open("giant_array.txt")
	# p billy.class
	# return "uniq_array.count is #{uniq_array.count}"
	# return "uniq array count is #{uniq_array.uniq.count}"
end


p generator
# p basher15
# $ 499905

# another way of thinking about it is how many combinations of R's and D's (as long as
# 	there are 20) can there be?

# so in the first case, we go over 20 R's and then down 20 D's

# 	then 19R 20D 1R
# 	then 18R 20D 2R
# 	then 17R 20D 3R
# 	...
# 	then 1R 20D 19R

# 	here we need to change rows

# 	then 1D 20R 19D
# 	then 2D 20R 18D
# 	then 3D 20R 17D
# 	...
# 	then 19D 20R 1D

# 	so we can work these cases and make up a function, ok

# 	but what about when things get funky?
# 	such as...
# 	then 2D 4R 3D 1R 1D 14R 7D 1R 7D


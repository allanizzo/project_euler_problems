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
	uniq_array = []

	start = %w[R R R R R R R R R R R R R R R R R R R R
				D D D D D D D D D D D D D D D D D D D D]

	# start = %w[R R D D]
				
							
	basher = 0
	while basher <= 250000
		if basher % 25000 == 0
			p basher
			p "eggplants"
		end
		temp_arr = start.shuffle
		# p temp_arr
		if uniq_array.include?(temp_arr) == false
			# puts "eggplants doo doo"
			uniq_array << temp_arr
		end
		basher += 1
		# p uniq_array
	end
	return "uniq_array.count is #{uniq_array.count}"
end


p generator
# p basher
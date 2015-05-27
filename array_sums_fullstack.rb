# array_add.rb

# so the question is

# write a script that returns the sum of things like things

arr1 = [2,3,4]
arr2 = [2,[4,6],1]
arr3 = [1,[4,6,7],4,[4,8,[4,7,8],4]]

# arr3.to_s.each_char do |char|
# 	p char
# end

def arr_sum(array)
	num_list = []
	array.to_s.each_char do |char|
		p char
		if char.match(/[0-9]/) #== true
			num_list << char
		end
	end
	sum = 0
	num_list.each do |s|
		sum += s.to_i
	end
	return num_list, sum
end

p arr_sum(arr3)


# def array_add(array)
# 	sum = 0
# 	array.each do |s|
# 		sum += s
# 	end
# 	return sum
# end

# # def array(array)
# # 	sum = 0

# # 	array.each do |arr|

# def array_recurse(array)
# 	if array[0] == []
# 		return 0
# 	else


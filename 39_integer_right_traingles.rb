# 39_integer_right_traingles.rb

# If p is the perimeter of a right angle triangle with
# integral length sides, {a,b,c}, there are exactly
# three solutions for p = 120.

# {20,48,52}, {24,45,51}, {30,40,50}

# For which value of p ≤ 1000, is the number of
# solutions maximised?



# def perimeter_add(side1,side2,side3)
# 	sum == side1+side2+side3
# 	return sum
# end

# i has removed the change

def pythag_theorem(side1,side2,side3)
	if (side1**2 + side2**2) == side3**2
	# 	return true
	# elsif (side1**2 + side3**2) == side2**2
	# 	return true
	# elsif side2**2 + side3**2 == side1**2
		return true	
	else
		return false
	end
end

def summer(list_of_nums)
	sum = 0
	list_of_nums.each do |num|
		sum += num
	end
	return sum
end

def integerizer(num)
	num = num.to_s
	if num.include?(".") == false
		return true
	end
	num = num.split(".")
	num[1].each_char do |char|
		if char != "0"
			return false
		end
	end
	return true
end

# so we can approach it like start with a and and b and then we know c or

def pythag_two()
	a = 1
	b = 2
	c = 1
	list = []
	dora_will_be_a_good_doctor = []
	while a <= 1000
		b = 1
		while b <= 1000
			temp_c = a**2 + b**2
			# dora_will_be_a_good_doctor << [a**2,b**2,temp_c]
			# p "#{a},#{b},#{temp_c**0.5}"
			if integerizer(temp_c**0.5) == true && summer([a,b,temp_c**0.5]) <= 1000
				dora_will_be_a_good_doctor << [a,b,temp_c**0.5]
			end
			b += 1
		end
		a += 1
	end
	# dora_will_be_a_good_doctor.each do |mowingdora_2|
	# 	if summer(mowingdora_2) <= 1000**2
	# 		list << mowingdora_2
	# 	end
	# end
	# list.each do |mowingdora|
	# 	p mowingdora
	# 	if mowingdora[0]**2 + mowingdora[1]**2 == mowingdora[2] #&& integerizer((mowingdora[2]**0.5)) == true
	# 		dora_will_be_a_good_doctor << [mowingdora[0], mowingdora[1], mowingdora[2]**0.5]
	# 	end
	# end
	# p list
	return dora_will_be_a_good_doctor
	# p list
end

p pythag_two



# def perim_counter()
# 	perims_dict = {}
# 	the_provider = 0
# 	while the_provider <= 1000
# 		perims_dict[the_provider] = 0
# 	end
# 	perims_list = pythag_two()
# 	perims_list.each do |item|
# 		perimeter = summer(item).to_i
# 		perims_dict[perimeter] += 1
# 		# p perimeter
# 	end
# 	max_val = [0,0]
# 	perims_dict.each do |key, value|
# 		if value > max_val[1]
# 			max_val[0] = key
# 			max_val[1] = value
# 		end
# 	end
# 	return max_val
# end

# p perim_counter


# p integerizer(3.0000)

# def three_four_fiveitizer()
# 	a = 3
# 	three_four_five_list = []
# 	while a <= 1000
# 		b = a/0.75
# 		c = b/0.80
# 		if integerizer(b) == true && integerizer(c) == true && a+b+c <= 1000
# 			three_four_five_list << [a,b,c]
# 		end
# 		a += 1
# 	end
# 	return three_four_five_list
# end

# p three_four_fiveitizer

# def main_integer_loop()
# 	perimeter = 3
# 	solution_list=[]
# 	while perimeter <= 100
# 		p perimeter
# 		a = 1
# 		while a < perimeter
# 			b = 1

# 			triangle_list_of_solutions = []

# 			while b < perimeter
# 					c = 1

# 				while c < perimeter
# 					# p c**2
# 					if (a+b+c) == perimeter && pythag_theorem(a,b,c) == true
# 						triangle_list_of_solutions << [a,b,c]
# 					end
# 					# if the addition of all the sides == perimeter and the pythag theorem works, add it to a list
# 					c += 1
# 				end
# 				b += 1
# 			end
# 			if triangle_list_of_solutions.empty? == false
# 				solution_list << triangle_list_of_solutions.sort
# 			end
# 			a += 1
# 		end
# 		perimeter += 1
# 	end
# 	return solution_list.uniq
# end
				

# p main_integer_loop()					
			

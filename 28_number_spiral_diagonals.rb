
# time taken - pretty long
# 	^ had to decode what the problem was looking for
# 	^ your code was a **little** confusing at first but you got it

# SOLVED - GOOD


# 28_number_spiral_diagonals.rb

# how would i approach this problem?


# i dont think this problem is so much about visually building the spiral,
# but finding WHICH NUMBERS TO COUNT AS DIAGONALS?

# TOP RIGHT NUMBER IS THE L OR W SQUARED

# so we can list all the numbers off from (1..(1001**2))

#    43 44 45 46 47 48 49
# 	 42	21 22 23 24 25 26
# 	 41	20  7  8  9 10 27
# 	 40	19  6  1  2 11 28
# 	 39	18  5  4  3 12 29
# 	 38	17 16 15 14 13 30
#    37 36 35 34 33 32 31



#      so while we list numbers, we keep track of number to hit and when we do, we start
#      increasing the time to check diagonals by 2

#      1 || 3,5,7,9 || 13, 17, 21, 25 || 31, 37, 43, 49 ||

#      adds 2     adds 4            adds 6

def diag_sum()
	check_num = 3
	benchmark = (check_num)**2
	sum_list = [1]
	# while benchmark <= (1001**2)
	current_num = 1
	increment_to_add = 2
	while benchmark <= (1001**2)
		p "benchmark is #{benchmark}"
		num_to_add = current_num + increment_to_add
		current_num = num_to_add
		sum_list << num_to_add
		if current_num == benchmark 
			check_num += 2
			increment_to_add += 2
		end
		benchmark = (check_num)**2
	end
	return sum_list
end

# p diag_sum()

def arr_sum(arr)
	sum = 0
	arr.each do |ele|
		sum += ele
	end
	return sum
end

p arr_sum(diag_sum())
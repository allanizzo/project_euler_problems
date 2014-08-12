
# time taken - mad long

#SOLVED BRUTE FORCE STYLE


# By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.

# 3
# 7 4
# 2 4 6
# 8 5 9 3

# That is, 3 + 7 + 4 + 9 = 23.

# Find the maximum total from top to bottom of the triangle below:

# 								          75
# 								         95 64
# 								       17 47 82
# 								     18 35 87 10
# 								    20 04 82 47 65
# 								  19 01 23 75 03 34
# 								 88 02 77 73 07 63 67
# 								99 65 04 28 06 16 70 92
# 							  41 41 26 56 83 40 80 70 33 
# 							 41 48 72 33 47 32 37 16 94 29
# 							53 71 44 65 25 43 91 52 97 51 14
# 						  70 11 33 28 77 73 17 78 39 68 17 57
# 						91 71 52 38 17 14 91 43 58 50 27 29 48
# 					  63 66 04 68 89 53 67 30 73 16 69 87 40 31
# 					 04 62 98 27 23 09 70 98 73 93 38 53 60 04 23

# NOTE: As there are only 16384 routes, it is possible to solve this problem by trying every route. However, Problem 67,
# is the same challenge with a triangle containing one-hundred rows; it cannot be solved by brute force, and requires a clever method! ;o)


whack_arnolds_triangle = 
%w[75],
%w[95 64],
%w[17 47 82],
%w[18 35 87 10],
%w[20 04 82 47 65],
%w[19 01 23 75 03 34],
%w[88 02 77 73 07 63 67],
%w[99 65 04 28 06 16 70 92],
%w[41 41 26 56 83 40 80 70 33],
%w[41 48 72 33 47 32 37 16 94 29],
%w[53 71 44 65 25 43 91 52 97 51 14],
%w[70 11 33 28 77 73 17 78 39 68 17 57],
%w[91 71 52 38 17 14 91 43 58 50 27 29 48],
%w[63 66 04 68 89 53 67 30 73 16 69 87 40 31],
%w[04 62 98 27 23 09 70 98 73 93 38 53 60 04 23] 


def path_generator()
	previous = Random.new
	step = previous.rand(0..1)
	path = [0]
	path << step
	index = 1
	13.times do 
		temp_path = path[-1]
		# p temp_path
		random_generator = previous.rand(0..1)
		if random_generator == 0
			path << temp_path
		elsif random_generator == 1
			path << temp_path + 1
		end
	end
	return path
end

# p path_generator


def sum_checker(some_whack_triangle)
	basher = 0
	largest_sum = 0
	while basher < 100000
		temp_sum = 0
		new_path = path_generator()

		some_whack_triangle.each_with_index do |row,index|
			temp_sum += row[new_path[index]].to_i
			# p row[new_path[index]]
			# p "index is #{index}"
			# p new_path[index]
		end
		if temp_sum > largest_sum
			largest_sum = temp_sum
		end

		basher += 1
	end
	return largest_sum
end

p sum_checker(whack_arnolds_triangle)


# what did we learn?
# - this problem was a little tricky, mostly in decoding the strategy
# - it works by generating a random path where new elements are adjacent
# - then it sums up each element in the arrays
# - setting the temp_path[-1] and then keeping it or adding 1 to it
# 	in the next row was the juice of the problem
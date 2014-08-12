
# solved

grid =	%q[	08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08
			49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00
			81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65
			52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91
			22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80
			24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50
			32 98 81 28 64 23 67 10 26 38 40 67 59 54 70 66 18 38 64 70
			67 26 20 68 02 62 12 20 95 63 94 39 63 08 40 91 66 49 94 21
			24 55 58 05 66 73 99 26 97 17 78 78 96 83 14 88 34 89 63 72
			21 36 23 09 75 00 76 44 20 45 35 14 00 61 33 97 34 31 33 95
			78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92
			16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57
			86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58
			19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40
			04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66
			88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69
			04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36
			20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16
			20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54
			01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48]


def splitter(grid_string)
	counter = 0
	temp_arr = []
	new_arr = []
	mow = grid_string.split(" ")
	mow.each do |ele|
		# p ele
		temp_arr << ele.to_i
		counter += 1
		if counter == 20
			counter = 0
			new_arr << temp_arr
			temp_arr = []
		end
		
	end
	return new_arr
end

def arr_mult(nums)
	# taken in array of 4 nums
	product = 1
	nums.each do |num|
		product = product * num
	end
	return product
end

# p splitter(grid)

# need to check in all directions, if not valid than the product doesnt count
# have 19 arrays with 19 elements

# arr[0..4] needs to work
# so does...
# arr


# # we have 19 arrays with 19 elements

# could define different methods for each task?

def right_and_left_check(grid)
	n_grid = splitter(grid)
	index_hi = 3
	index_lo = 0
	largest_product = 0
	n_grid.each do |first|
		while first[index_hi] != nil
			temp_product = arr_mult(first[index_lo..index_hi])
			if temp_product > largest_product
				largest_product = temp_product
			end
			index_lo += 1
			index_hi += 1
		end
	end
	return largest_product
end

def up_down_check(grid)
	n_grid = splitter(grid)
	largest_product = 0
	temp_product = 0
	row1, row2, row3, row4 = 0,1,2,3
	while row4 <= 19
		column_number = 0
		while column_number <= 19
			temp_product = n_grid[row1][column_number]*n_grid[row2][column_number]*n_grid[row3][column_number]*n_grid[row4][column_number]
			if temp_product > largest_product
				largest_product = temp_product
			end
			column_number += 1
		end
		row1 += 1
		row2 += 1
		row3 += 1
		row4 += 1
	end
	return largest_product
end

def diag_check(grid)
	n_grid = splitter(grid)
	largest_product = 0
	temp_product = 0
	row1, row2, row3, row4 = 0,1,2,3
	# col1, col2, col3, col4 = 0,1,2,3

	while row4 <= 19
		col1, col2, col3, col4 = 0,1,2,3
		while col4 <= 19
			# p n_grid[row4][col4]
			temp_product = n_grid[row1][col1]*n_grid[row2][col2]*n_grid[row3][col3]*n_grid[row4][col4]
			if temp_product > largest_product
				largest_product = temp_product
			end
			col1 += 1
			col2 += 1
			col3 += 1
			col4 += 1
		end
		row1 += 1
		row2 += 1
		row3 += 1
		row4 += 1
	end
	return largest_product
end

def other_diag(grid)
	n_grid = splitter(grid)
	largest_product = 0
	temp_product = 0
	row1, row2, row3, row4 = 0,1,2,3
	# col1, col2, col3, col4 = 0,1,2,3

	while row4 <= 19
		col1, col2, col3, col4 = 3,2,1,0
		while col1 <= 19
			# p n_grid[row4][col4]
			temp_product = n_grid[row1][col1]*n_grid[row2][col2]*n_grid[row3][col3]*n_grid[row4][col4]
			if temp_product > largest_product
				largest_product = temp_product
			end
			col1 += 1
			col2 += 1
			col3 += 1
			col4 += 1
		end
		row1 += 1
		row2 += 1
		row3 += 1
		row4 += 1
	end
	return largest_product
end

p right_and_left_check(grid)
p up_down_check(grid)
p diag_check(grid)
p other_diag(grid)
















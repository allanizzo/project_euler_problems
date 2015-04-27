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


def main_integer_loop()
	perimeter = 3
	solution_list=[]
	while perimeter <= 100
		p perimeter
		a = 1
		while a < perimeter
			b = 1

			triangle_list_of_solutions = []

			while b < perimeter
					c = 1

				while c < perimeter
					# p c**2
					if (a+b+c) == perimeter && pythag_theorem(a,b,c) == true
						triangle_list_of_solutions << [a,b,c]
					end
					# if the addition of all the sides == perimeter and the pythag theorem works, add it to a list
					c += 1
				end
				b += 1
			end
			if triangle_list_of_solutions.empty? == false
				solution_list << triangle_list_of_solutions.sort
			end
			a += 1
		end
		perimeter += 1
	end
	return solution_list.uniq
end
				

p main_integer_loop()					
			

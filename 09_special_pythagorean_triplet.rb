# alrighty

# special pythagorean triplets

# so the problem is asking for the product
# of the one pythag triplet where a + b + c = 1000

# pythag triplet is where a < b < c
# and a**2 + b**2 == c**2

# seems like we need to start generating pythagorean triplets
# and check their sum to see if they == 1000
# then multiply and get the product when the 
# condition is met


# find a way to start generating pythag triplets

# a b c

def pythag()
	
	# so if we have a and b then we have c (same goes for c**2)
	# just need to check the jawn and see if its the triplet that you want

	(1...1000).each do |a|
		b_range = a+1
		(b_range...1000).each do |b|
			c = (1000 - (a+b))
			# if a+b+c == 1000
			# 	puts "okey"
			if ((a**2 + b**2) == c**2) && (a+b+c == 1000) && a < b < c
				puts "mowjiggle"
				p "a is #{a}  b is #{b} and c is #{c}"
				p "product of a*b*c == #{a*b*c}"
				return a*b*c	
			end
		end

	end


end

p pythag()










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
	a = -1000
	b = -1000
	c = -1000

	while a <= 1000
		b = a + 1
		while b <= 1000
			c = b + 1
			while c <= 1000
				p "#{a**2} #{b**2} #{c**2}"
				c += 1
			end
			b += 1
		end
		a += 1
	end

end

p pythag()









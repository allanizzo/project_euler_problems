# 44_pentagon_numbers.rb



# Pentagonal numbers are generated
# by the formula, Pn=n(3n−1)/2. The
# first ten pentagonal numbers are:

# 1, 5, 12, 22, 35, 51, 70, 92, 117, 145, ...

# It can be seen that P4 + P7 = 22 + 70 = 92 = P8.
# However, their difference, 70 − 22 = 48, is not pentagonal.

# Find the pair of pentagonal numbers, Pj and Pk,
# for which their sum and difference are
# pentagonal and D = |Pk − Pj| is minimised; what is the value of D?


def mad_pentagonals()
	pent_hash = {}
	hash_buffer = 50000
	maximum_loops = 100000
	pentags_list_1 = []
	pentags_list_2 = []
	(1..maximum_loops).each do |num|
		if num % 1000 == 0
			p num
		end
		pentag = num*((3*num)-1)/2
		pentags_list_1 << pentag
		pentags_list_2 << pentag
	end
	pentags_list_2 = pentags_list_2[0..(pentags_list_2.count)/2]
	# pentags_list_2 = pentags_list_1
	# p pentags_list_1
	# p pentags_list_1.max 
	number_of_hashes = pentags_list_1.max/hash_buffer
	# p "number_of_hashes is #{number_of_hashes}"
	(1..number_of_hashes).each do |threshhold|
		pent_hash[threshhold*hash_buffer] = []
	end
	# p pent_hash
	# SO WHAT WE HAVE HERE IS A HASH WHERE THE KEY IS THE MAX THRESHHOLD
	
	pent_hash.each do |key, value|
		while pentags_list_1.empty? == false
			shifter  = pentags_list_1.shift()
		# pentags_list_1.each do |p|
			if shifter <= key
				value << shifter
			elsif shifter > key
				break
			end
		end
	end
	# p pentags_list_2
	# p pent_hash
	# pent_hash.each do |key, value|
		# p key
	# end
	# p pent_hash[50000]
	return pent_hash, hash_buffer, pentags_list_2
end

# mad_pentagonals

def is_pentagonal(num, hashtable, hash_buffer)
	# step one is to find the right key in the dictionary
	# so num comes in, see how many times hash_buffer comes 
	# p hashtable
	hash_index = (num/hash_buffer) + 1
	key_lookup = hash_index*hash_buffer # need to check for 0-50k here
	# hashtable.each do |key, value|
		# p "key is #{key}"
	# end
	if hashtable[key_lookup] == nil
		return false
	elsif hashtable[key_lookup].include?(num) == true
		return true
	else
		return false
	end

	# step two is to return the value (list) and run .include?
end

# p is_pentagonal(852397,mad_pentagonals, 50000)

def hash_check()
	pent_hash, hash_buffer, list_of_pentags = mad_pentagonals()
	pk = 0
	buffer_main = 100
	smallest_diff = 5**800 # large number so it will be guaranteed to come down
	max_index_of_list = list_of_pentags.count-1
	diff_list = []
	while pk < max_index_of_list

		pj_low = [0,pk-buffer_main].max # should be 0 until pk is 100 then it increases by 1
		pj_high = [buffer_main,max_index_of_list-pk].min # say list is 1000 long, pk is 979 so we want pj_high to be 21
		p "pk is #{pk}"
		p "buffer_down is #{buffer_down} and buffer_up is #{buffer_up}"
		p "pj_low is #{pj_low} and pj_high is #{pj_high}"
		list_of_pentags[pj_low..pj_high].each do |pj|
			pk = list_of_pentags[pk]
			pj = pj
			diff_abs = (list_of_pentags[pk]-list_of_pentags[pj]).abs
			sum_adds = (list_of_pentags[pk]+list_of_pentags[pj])
			if is_pentagonal(diff_abs, pent_hash, hash_buffer) == true && is_pentagonal(sum_adds,pent_hash,hash_buffer) == true
				if diff_abs < smallest_diff
					diff_list = "pk is #{pk}, pj is #{pj} and diff is #{diff_abs}"
				end
			end
			sleep(0.001)			
		end
		pk += 1
	end
	return diff_list
end

p hash_check

#  TRY 1 --> "pk is 998, pj is 958 and diff is 117460"

#############################################################################
#############################################################################
#############################################################################
#############################################################################

		# buffer_down = [buffer_main,(buffer_main-(buffer_main-pk)).abs].min  # this is then pk is less than buffer_main
		# buffer_up = [buffer_main, (max_index_of_list)-pk].min # this adjusts for when the end of list is near and goesto 0
		# pj_low = [buffer_down, pk].max
		# pj_high = pk + buffer_up
		# pj = pj_low	
			# say pk is 7, you want to index from 0 to 107
			# say pk is 57, you want to index from 0 to 157
			# say pk is 100, you want to index from 0 to 200 (or 199 idk yet)
			# say pk is 137, you want to index from 37 to 237
			# so while i like the jazz up there, i think it unnecessary	
		# while pj <= pj_high
		# 	# p "pj_low is #{pj_low} and pj_high is #{pj_high}"
		# 	diff_abs = (list_of_pentags[pk]-list_of_pentags[pj]).abs
		# 	sum_adds = (list_of_pentags[pk]+list_of_pentags[pj])
		# 	if is_pentagonal(diff_abs, pent_hash, hash_buffer) == true && is_pentagonal(sum_adds,pent_hash,hash_buffer) == true
		# 		if diff_abs < smallest_diff
		# 			diff_list = "pk is #{pk}, pj is #{pj} and diff is #{diff_abs}"
		# 		# diff_list << ["pk is #{pk}, pj is #{pj} and diff is #{diff_abs}"]
		# 	# must check if diff is pentagonal
		# 	# we must take the diff and plug it into the hash in the right place for .include?
		# 	# p "diff_abs is #{diff_abs}"
		# 		end
		# 	end
		# 	sleep(0.001)
		# 	pj += 1
		# end
		# pk += 1


# def mad_pentagonals_dict()
# 	pk_dict = {}
# 	pj_dict = {}
# 	(1..1000000).each do |num|
# 		pent = num*((3*num)-1)/2
# 		p pent/num.to_f
# 		pk_dict[num] = pent
# 		pk_dict[num] = pent
# 	end
# 	return pk_dict,pj_dict
# end

# # mad_pentagonals_dict


# def checker2()
# 	pk_dict,pj_dict = mad_pentagonals_dict()
	
# 	pk_dict.each do |key, value|
# 		pj_count = 1
# 		while pj_count
# def is_pentagonal(num, list)
# 	if list.include?(num) == true
# 		return true
# 	else
# 		return false
# 	end
# end


# def big_check()
# 	pent_hash = mad_pentagonals()
# 	diff_list = []
# 	# index_buffer = 10
# 	# pk_index = 11
# 	# smallest_diff = 1000**4
# 	# largest_diff = 0

# 	lists.each do |list|

# 		# while pk_index <= list.count()-1-index_buffer
# 		# 	pj_index = pk_index-index_buffer
# 		# 	while pj_index <= pk_index + index_buffer
# 		# 		diff = list[pk_index] - list[pj_index]
# 		# 		add = list[pk_index] + list[pj_index]
# 		# 		# p "diff is #{diff.abs} and add is #{add}, pk_index is #{pk_index} and pj_index is #{pj_index}"
# 		# 		pj_index += 1
# 		# 		if diff != 0 && diff.abs < smallest_diff
# 		# 			smallest_diff = diff.abs
# 		# 		end
# 		# 		if is_pentagonal(diff.abs,list) == true
# 		# 			diff_list << [pk_index,pj_index,diff.abs]
# 		# 		end

# 		# 	end
# 		# 	pk_index += 1
			
# 		# 	if pk_index % 1000 == 0
# 		# 		p pk_index
# 		# 	end
# 		# end
# 		p list
# 	end
# 	p "smallest_diff is #{smallest_diff}"
# 	return diff_list
# end

# p big_check

# def three_checker(num)
# 	count = 0
# 	while num >= 1
# 		num = num - 3
# 		count += 1
# 	end
# 	return count
# end

# def checker()	
# 	mad_list = mad_pentagonals()
# 	count = 1
# 	while count <= mad_list.count()-1
# 		diff = mad_list[count] - mad_list[count-1]
# 		p "diff is #{diff}"
# 		p "diff % 3 == #{diff%3}"
# 		p "three_checker is #{three_checker(diff)}"
# 		count += 1
# 	end
# 	# mad_list.combination(2).to_a
# 	# p mad

# end

# p checker()


# 205982409852098  
# idea is that if you put a number in on the left, you get the pentagonal number on the right
# but if you have the number on the right, why cant you find out what number term it is directly?


# pN = N*((3*N)-1)/2


# pN*2 = N*((3*N)-1)
# (pN*2)/N = (3*N)-1
# ((pN*2)/N)+1 = 3*N

# N = N*((3*N)-1)/2
# N*2 = N*((3*N)-1)
# 2 = (3*N)-1
# 3 = 3*N
# n = 1 what the fuck

# def pent_checker(num)
# 	# po = num*((3*num)-1)/2
# 	# po*2 == num*((3*num)-1)
# 	# (po*2)/num == ((3*num)-1)
# 	# ((po*2)/num)+1 == 3*num
# 	# (((po*2)/num)+1)/3 == num
# 	# num = ((num/2.0)+1)/3.0

# 	# p po
# 	p num
# end
# pent_checker(12)
# pent_checker(22)
# pent_checker(35)

# def is_pentagonal(num)
	# if 

# p mad_pentagonals


# so the difference between each triangle number and the next starts at 4 and increases by 3
# p checker

# def recurser(n)
# 	if n == 1
# 		return 1
# 	elsif n == 2
# 		return 5
# 	else
# 		recurser(n*((3*n)-1)/2)
# 	end
# end

# p recurser(10)


# def pent_pairs()
# 	list_of_pentags = mad_pentagonals()
# 	list_of_sum_diffs = []
# 	buffer1 = 10
# 	buffer2 = 100
# 	pj = 5
# 	max_index = list_of_pentags.count()-1
# 	while pj <= max_index-buffer1
# 		pk = pj-buffer1
# 		while pk < pj+buffer1
# 			peekay = list_of_pentags[pk]
# 			peejay = list_of_pentags[pj]
# 			# p "peekay+peejay is #{peekay+peejay}"
# 			# p "peekay-peejay is #{peekay-peejay}"
# 			if list_of_pentags[pk-buffer2..pk+buffer2].include?(peejay+peekay) == true && list_of_pentags[pk-buffer2..pk+buffer2].include?((peekay-peejay).abs) == true
# 				list_of_sum_diffs << [peejay,peekay]
# 			end
# 			pk += 1
# 		end
# 		if pj%10000 == 0
# 			p pj
# 		end
# 		pj += 1
# 	end
# 	return list_of_sum_diffs
# end

# p pent_pairs



# ok so whats the deal here, we can brute force it but the problem is that .include? on a large list 
# takes a long ass time, and most of the calculations are unnecessary

# so creating pentagonal numbers takes no time, i can make a billion in a second or whatever, the problem
# as i see it is checking if sums or differences are pentagonal

# so i guess there are two ways?  one way is to understand the maffmatics and compute
# the other way is to damp the .include? so it only checks a narrower band of possible values. 

# the problem is that i cant yet tell what the differences that are pentagonal might actually be


# so what do we know?

# 	pentagonal numbers increase by x + 3 every round so p10-p9 == some number and p11-p10 == some number + 3


# perchance another way is to keep a hash, makes lookup times faster and index on the main nubmers is ok but
# indexing the difference or sum is problematic





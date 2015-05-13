
# https://projecteuler.net/problem=31



# In England the currency is made up of pound, £, and
# pence, p, and there are eight coins in general circulation:

# 1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
# It is possible to make £2 in the following way:

# 1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
# How many different ways can £2 be made using any number of coins?





# class Array
#   def odd_values
#     self.values_at(* self.each_index.select {|i| i.odd?})
#   end
#   def even_values
#     self.values_at(* self.each_index.select {|i| i.even?})
#   end
# end


# okey, so we have been having problems here 

# so the goal is to count how many different combinations of the given
# coins add to two pounds

# recursive?

# looping?

# the other method worked i guess but it would take mad long and it didnt even work

# so if were looping, we can cover numbers real fast but we need to damp it coorectly

# AND we need a way to check if different combinations of different amounts of coins work



# so two coins is easy, three or more is what is giving me trouble

# loop first to max, count, up second to one, third at zero, redo etc...

# but then how do we account for arrays of differnt counts?

# 	[1,2,5,10]
# 	[1,2,5]
# 	[2,5,10,20,50]


# 	etc...

# 	[1,0,2,0,5,0,10,0]
# 	[1,0,2,0,5,0]
# 	[2,0,5,0,10,0,20,0,50,0]

def combo_creator()
	# gives all the different combo types from 1 type to all types in different combinations
	   one_p = 1
    two_p = 2
    five_p = 5
    ten_p = 10
    # twenty_p = 20
    # fifty_p = 50
    # one_pound = 100

    coinage_array = [
        one_p,
        two_p,
        five_p,
        ten_p,
        # twenty_p,
        # fifty_p,
        # one_pound
    ]

    combo_array = []

    count = 1

    while count <= coinage_array.count()
    	combo_array << coinage_array.combination(count).to_a
    	count += 1
    end
    return combo_array
end

# def arr_sum(array)
# 	sum = 0
# 	array.each do |s|
# 		sum += s
# 	end
# 	return sum
# end

# def adder2(array)
# 	# max/array.last == the max number of overall loops
# 	# so lets say you have [1,2,5,10]
# 	# 					[1,200,2,100,5,40,10,20]


# 	# 					[1,2,5,10,20,50,100,200]
# 	# 					[200,100,40,20,10,4,2,1]
# 	max = 200
# 	new_arr = []
# 	array.each do |zero|
# 		new_arr << zero
# 		new_arr << 0
# 	end
# 	new_arr_count = new_arr.count
# 	if new_arr_count == 1
# 		while new_arr[1] <= max




# end



# # p combo_creator

# def dict_creator(array)
# 	dict = {}
# 	array.each do |entry|
# 		dict[entry] = 0
# 	end
# 	return dict
# end

# def dict_summer(dictionary)
# 	sum = 0
# 	dictionary.each do |key, value|
# 		sum += key*value
# 	end
# 	return sum

# end

# def adder(dictionary, array)
# 	# [1,2,5,10,100]
# 	# {1=>0, 2=>0, 5=>0, 10=>0, 100=>0}
# 	# this is the looper, dont forget to call dict_summer
# 	max = 200
# 	num_correct = 0
# 	dict_length = dictionary.count
# 	counter = 0
# 	p dict_length
# 	if dict_length == 1
# 		dictionary[array[0]] += counter
# 		counter += 1
# 	elsif dict_length == 2
# 		while dictionary[array[1]] <= max/array[1]
# 			if dict_summer(dictionary) == max
# 				num_correct += 1
# 			end
# 			dictionary[array[0]] += 1
# 			# p counter
# 			if dictionary[array[0]] == max
# 				dictionary[array[0]] = 0
# 				dictionary[array[1]] += 1
# 			end
# 		end
# 	elsif dict_length == 3
# 		while dictionary[array[2]] <= max/array[2]
# 			if dict_summer(dictionary) == max
# 				num_correct += 1
# 			end
# 			dictionary[array[0]] += 1
# 			# p counter
# 			if dictionary[array[0]] == max
# 				dictionary[array[0]] = 0
# 				dictionary[array[1]] += 1
# 			end
# 			if dictionary[array[1]] == max
# 				dictionary[array[1]] = 0
# 				dictionary[array[2]] += 1  # 5x40 == 200 so
# 				# p dictionary
# 			end
# 		end
# 	elsif dict_length == 4
# 		while dictionary[array[3]] <= max/array[3]
# 			# p max/array[3]	

# 			if dict_summer(dictionary) == max
# 				num_correct += 1
# 			end
# 			dictionary[array[0]] += 1
			
# 			if dictionary[array[0]] == max/array[0] - dictionary[array[3]]*array[3]
# 				dictionary[array[0]] = 0
# 				dictionary[array[1]] += 1
# 			end
# 			if dictionary[array[1]] == max/array[1] - dictionary[array[2]]*array[2]
# 				dictionary[array[1]] = 0
# 				dictionary[array[2]] += 1  # 5x40 == 200 so
# 			end
# 			if dictionary[array[2]] == max/array[2]
# 				dictionary[array[2]] = 0
# 				dictionary[array[3]] += 1
# 			end
# 			p dictionary[array[3]]
# 		end
# 	end
# 	p "num_correct is #{num_correct}"	
# 	return num_correct
# end

# p adder({1=>0,2=>0,5=>0,10=>0},[1,2,5,10])

def rando_er(array, max)
	new_arr = []
	array.each do |randrand|
		new_arr << randrand
		new_arr << rand(1..(max/randrand))
	end
	return new_arr
end

# p rando_er([1,2,5,10], 200)
def arr_sum(arr)
	sum = 0
	index1 = 0
	index2 = 1
	while index2 <=arr.count-1
		sum += arr[index1*index2]
		index1+=2
		index2+=2
	end

end

def looper()
	big_count = 0
	combo_list = combo_creator()
	rand_list = []
	count_list = []
	max = 20
	while big_count <= 10000
		if big_count % 10000 == 0
			p big_count
		end
		for brackets in combo_list
			for inner_bracket in brackets
				rand_list << rando_er(inner_bracket,max)
				# adding_dict = dict_creator(inner_bracket)
				# here is where we must count the adding dict
				# p adding_dict
				# call adder
			end
		end
		big_count += 1
	end
	# rand_list.uniq.each do |hoping|
	#  	if arr_sum(hoping) == 200
	#  		count_list << hoping
	#  	end
	# 	p hoping
	# end
	# watch out for what combo_creator spits out, may need to be modified
	# return count_list
	return rand_list
end
p looper




# # p dict_creator([1,2,5,10])

# # p adder()





# # def coinage_counter(arr)
# #     # incoming array will look like this:
# #     # [a,4,b,4,c,5,d,6] etc...
# #     # your job is to find the total of each
# #     # remember that odd numbers are the counted and even (including 0 is the coin type)
# #     mult_1_count = 0
# #     mult_2_count = 1
# #     total_product = 0
# #     while mult_2_count < arr.count
# #         mult_1 = arr[mult_1_count]
# #         mult_2 = arr[mult_2_count]
# #         if mult_1==nil || mult_2==nil
# #             break
# #         end
# #         product = mult_1*mult_2
# #         total_product += product
# #         mult_1_count += 2
# #         mult_2_count += 2
# #     end
# #     return total_product
# # end
# # # p "coinage count"
# # # p coinage_counter([1,2,5,10])

# # # p coinage_counter([1,20,3,4,5,6]) # coinage counter works ok, based upon the data structure
# # # you have

# # def count_maker(arr)
# #     new_array = []
# #     arr.each do |mower|
# #         new_array << mower
# #         new_array << 0
# #     end
# #     return new_array
# #     # note that odd numbers will be the coin types and
# #     # even numbers will be the count of each
# #     # [one_p,0,two_p,0] etc...
# # end

# # # p count_maker([1,2,3,4])

# # def zero_cleaner(arr)
# #     index = 1
# #     while index <= arr.count-1
# #         if arr[index] == 0
# #             arr.delete_at(index)
# #             arr.delete_at(index-1)
# #             # arr.shift()
# #         end
# #         index += 1
# #     end
# #     return arr
# # end

# # # p zero_cleaner([1,3,20,0,40,2])
# # # p zero_cleaner([1,0])

# # # p randomizer([1,3,5])

# # def randomizer(arr)
# #     new_arr = []
# #     for ele in arr
# #         new_arr << ele
# #         new_arr << rand(0..200/ele)
# #     end
# #     return new_arr
# # end

# # # p randomizer([1,2,4,10,20,50,100])

# # def mad_english_coinage()
# #     # remember that two_pound = 200 automatically counts as one way
# #     one_p = 1
# #     two_p = 2
# #     five_p = 5
# #     ten_p = 10
# #     twenty_p = 20
# #     fifty_p = 50
# #     one_pound = 100

# #     combo_array = []

# #     coinage_array = [
# #         one_p,
# #         two_p,
# #         five_p,
# #         ten_p,
# #         twenty_p,
# #         fifty_p,
# #         one_pound
# #     ]

# #     combo_array = []
# #     damper = 0
# #     while damper < 1000000
# #     # while damper < 100
# #         if damper % 10000000 == 0
# #             p damper
# #         end
# #         # rand_number = rand(1..7)
# #         # coinage_dupe = coinage_array[1..rand_number].shuffle
# #         # coinage_dupe = coinage_dupe.shuffle()
# #         coinage_dupe = randomizer(coinage_array)
# #         # p coinage_dupe
# #         if coinage_counter(coinage_dupe) == 200
# #             # zero_cleaned = zero_cleaner(coinage_dupe)
# #             # combo_array << zero_cleaned #.sort shouldnt matter here, something to check on
# #             combo_array << coinage_dupe
# #         end
# #         # just need to hit timer counter here
# #         damper += 1
# #     end # here is the master loop
# #     uniq_array = combo_array
# #     sorted_uniq_array = uniq_array.uniq
# #     p sorted_uniq_array
# #     p "drumroll please..."
# #     p "sorted_uniq_array.count is #{sorted_uniq_array.count}" #the +1 is to account for the 1 200 pound note
# #     p "sorted_uniq_array.count is #{sorted_uniq_array.count+1}"
# # end

# # mad_english_coinage()

# # IMPORTANT THOUGHT -- YOU DONT HAVE TO RANDOMIZE THE ARRAY AND THE NUMBER OF COINS,
# # YOU CAN KEEP THE ARRAY ORDERED AND SIMPLY RANDOMIZE THE NUMBER OF EACH COIN TYPE.
# # THAT WAY YOU DONT HAVE TO COME UP WITH SOME CRAZY ASS SORTING METHOD

#     
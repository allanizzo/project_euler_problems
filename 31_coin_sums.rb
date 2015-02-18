
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




def coinage_counter(arr)
    # incoming array will look like this:
    # [a,4,b,4,c,5,d,6] etc...
    # your job is to find the total of each
    # remember that odd numbers are the counted and even (including 0 is the coin type)
    mult_1_count = 0
    mult_2_count = 1
    total_product = 0
    while mult_2_count < arr.count
        mult_1 = arr[mult_1_count]
        mult_2 = arr[mult_2_count]
        if mult_1==nil || mult_2==nil
            break
        end
        product = mult_1*mult_2
        total_product += product
        mult_1_count += 2
        mult_2_count += 2
    end
    return total_product
end
# p "coinage count"
# p coinage_counter([1,2,5,10])

# p coinage_counter([1,20,3,4,5,6]) # coinage counter works ok, based upon the data structure
# you have

def count_maker(arr)
    new_array = []
    arr.each do |mower|
        new_array << mower
        new_array << 0
    end
    return new_array
    # note that odd numbers will be the coin types and
    # even numbers will be the count of each
    # [one_p,0,two_p,0] etc...
end

# p count_maker([1,2,3,4])

def zero_cleaner(arr)
    index = 1
    while index <= arr.count-1
        if arr[index] == 0
            arr.delete_at(index)
            arr.delete_at(index-1)
            # arr.shift()
        end
        index += 1
    end
    return arr
end

# p zero_cleaner([1,3,20,0,40,2])
# p zero_cleaner([1,0])

# p randomizer([1,3,5])

def randomizer(arr)
    new_arr = []
    for ele in arr
        new_arr << ele
        new_arr << rand(0..200/ele)
    end
    return new_arr
end

# p randomizer([1,2,4,10,20,50,100])

def mad_english_coinage()
    # remember that two_pound = 200 automatically counts as one way
    one_p = 1
    two_p = 2
    five_p = 5
    ten_p = 10
    twenty_p = 20
    fifty_p = 50
    one_pound = 100

    combo_array = []

    coinage_array = [
        one_p,
        two_p,
        five_p,
        ten_p,
        twenty_p,
        fifty_p,
        one_pound
    ]

    combo_array = []
    damper = 0
    while damper < 1300000000
    # while damper < 100
        if damper % 10000000 == 0
            p damper
        end
        # rand_number = rand(1..7)
        # coinage_dupe = coinage_array[1..rand_number].shuffle
        # coinage_dupe = coinage_dupe.shuffle()
        coinage_dupe = randomizer(coinage_array)
        # p coinage_dupe
        if coinage_counter(coinage_dupe) == 200
            # zero_cleaned = zero_cleaner(coinage_dupe)
            # combo_array << zero_cleaned #.sort shouldnt matter here, something to check on
            combo_array << coinage_dupe
        end
        # just need to hit timer counter here
        damper += 1
    end # here is the master loop
    uniq_array = combo_array
    sorted_uniq_array = uniq_array.uniq
    p sorted_uniq_array
    p "drumroll please..."
    p "sorted_uniq_array.count is #{sorted_uniq_array.count+1}" #the +1 is to account for the 1 200 pound note
    
end

mad_english_coinage()

# IMPORTANT THOUGHT -- YOU DONT HAVE TO RANDOMIZE THE ARRAY AND THE NUMBER OF COINS,
# YOU CAN KEEP THE ARRAY ORDERED AND SIMPLY RANDOMIZE THE NUMBER OF EACH COIN TYPE.
# THAT WAY YOU DONT HAVE TO COME UP WITH SOME CRAZY ASS SORTING METHOD

    
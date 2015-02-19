# # We shall say that an n-digit number is pandigital if it makes use of all
# the digits 1 to n exactly once; for example, the 5-digit number, 15234,
# is 1 through 5 pandigital.

# # The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing
# multiplicand, multiplier, and product is 1 through 9 pandigital.

# # Find the sum of all products whose multiplicand/multiplier/product identity
# can be written as a 1 through 9 pandigital.
# # HINT: Some products can be obtained in more than one way so be sure to only
# include it once in your sum.

# interesting problem

# what are the constraints?

# well all together, we can only use 9 digits, 1,2,3,4,5,6,7,8,9

# so thats constraint #1

# we could again rando it, but idk, i want to search for a more elegant solution

# so if we think about functions, is_pandigital might be one, but that implies
# having someting to check against and therefore a lot of wasted effort


# whats the maximum? rough guess? a product of 10,000 (would loop pretty fast)

# whats the largest multiplier, multiplicand of 10,000?

# def multiplicand_finder()
#     multiplier = 1
#     multiplicand = 1
#     product = 0
#     product_list = []
#     while multiplicand < 10000
#         product = multiplier*multiplicand
#         if product == 10000
#             # max_multiplicand = multiplicand
#             # max_multiplier = multiplier
#             product_list << [multiplier, multiplicand]
#         end
#         multiplier += 1
#         if multiplier == 10000
#             multiplier = 1
#             multiplicand += 1
#         end
#     end
#     # return [max_multiplier, max_multiplicand]
#     return product_list
# end

# p multiplicand_finder

def pandickchecker(dict)
    dict.each_value do |dickcheck|
        if dickcheck != 1
            return false
        end
    end
    return true
end   

# dickchecktionary = {"1" => 1, "2" => 1}

# p pandickchecker(dickchecktionary)


def is_pandigital(multiplier, multiplicand, product)

    pandictionary = {
        "1"=>0,
        "2"=>0,
        "3"=>0,
        "4"=>0,
        "5"=>0,
        "6"=>0,
        "7"=>0,
        "8"=>0,
        "9"=>0
    }
   
    num_string = ""
    num_string << multiplier.to_s
    num_string << multiplicand.to_s
    num_string << product.to_s

    if num_string.length != 9 || num_string.include?("0")
        return false
    else
        num_string.each_char do |char|
            pandictionary[char] += 1
        end
    end

    if pandickchecker(pandictionary) == true
        return true
    else
        return false
    end

end

# p is_pandigital(123,456,789)

def super_max_multo_bonanza()
    multiplier = 1
    multiplicand = 1
    product = 1
    pandigilist = []
    while multiplicand < 5000
        if multiplicand % 100 == 0
            p multiplicand
        end
        product = multiplier*multiplicand
        if is_pandigital(multiplier,multiplicand,product) == true
            # max_multiplicand = multiplicand
            # max_multiplier = multiplier
            pandigilist << [multiplier,multiplicand,product]
        end
        multiplier += 1
        if multiplier == 5000
            multiplier = 1
            multiplicand += 1
        end
    end
    # return [max_multiplier, max_multiplicand]
    return pandigilist
end

# p super_max_multo_bonanza

def pandigisummer()
    pandigiarray = super_max_multo_bonanza

    sum = 0

    pandigiarray.each do |summer|
        sum += summer[2]
    end
    p pandigiarray
    p "and the sum is #{sum}"
    return sum
end

p pandigisummer

# findings: 5000 x 2 is combo with largest multiplier or multiplicand (both ways)
# duh

# def multiplier()
#     multiplier = 1
#     multiplicand = 1
#     product = 0

# end
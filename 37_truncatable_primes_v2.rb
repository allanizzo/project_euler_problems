# 37_truncatable_primes.rb



# The number 3797 has an interesting property.
# Being prime itself, it is possible to
# continuously remove digits from left to right,
# and remain prime at each stage: 3797, 797, 97, and 7.
# Similarly we can work from right to left: 3797, 379,
# 37, and 3.

# Find the sum of the only eleven primes
# that are both truncatable from left to
# right and right to left.

# NOTE: 2, 3, 5, and 7 are not considered
# to be truncatable primes.


# def quick_num_checker(num)
#     num = num.to_s
#     if num == "5"
#         return true
#     elsif num == "1"
#         return false
#     elsif num == "2"
#         return true
#     elsif num == "3"
#         return true
#     elsif num == "7"
#         return true   
#     elsif num.include?("0") || num.include?("2") || num.include?("4") || num.include?("5") || num.include?("6") || num.include?("8")
#         return false
#     # elsif num[-1]=="2"
#     #     return false
#     # elsif num[-1]=="4"
#     #     return false
#     # elsif num[-1]=="5"
#     #     return false
#     # elsif num[-1]=="6"
#     #     return false
#     # elsif num[-1]=="8"
#     #     return false
#     else
#         return true
#     end
# end

# def quick_check(num)
#     num_string = num.to_s
#     if num_string.include?("0") == true
#         return false
#     elsif num_string.include?("2") == true || num_string.include?("4") || num_string.include?("5") || num_string.include?("6") || num_string.include?("8")
#         return false  
#     else
#         return true
#     end
# end
           
def is_prime(num)
    if num == 1
        return false
    # elsif quick_check(num)== false
    #     return false
    else          
        divisor = 2
        while divisor < num
            if num % divisor == 0
                return false
            end
            divisor += 1
        end
    end
    return true
end


def prime_list_creator(max)
    prime_list = []
    count = 1
    while count < max
        if count % 10001 == 0
            p count
        end
        if is_prime(count) == true
            # if is_prime(count) == true
            prime_list << count.to_s
            # end
        end
        count += 2
    end
    return prime_list
end

# p prime_list_creator(100000)

def to_the_left_truncator(num)#, list)
    # if list.include?(num)
        num = num.to_s
        count = num.length-1 # "23456"
        while count >= 0
            # p num
            num = num[0...count]
            if is_prime(num.to_i) == false
                return false
            end
            count = count - 1
        end
    # end
    return true
end

def to_the_right_truncator(num)
    num = num.to_s
    str_index = num.length-1
    count = 0 # 3797
    while count <= str_index
        # p num
        num = num[1..-1]
        if is_prime(num.to_i) == false
            return false
        end
        count += 1
    end
# end
    return true
end

# p to_the_left_truncator(3797)
# p to_the_right_truncator(3797)
# p to_the_right_truncator(73377973)

def looper()
    max = 1000000
    trunc_list = []
    prime_list = prime_list_creator(max)
    # p prime_list
    prime_list.each do |mower|
        if to_the_left_truncator(mower) == true && to_the_right_truncator(mower) == true
            trunc_list << mower
        end
    end
    return trunc_list
end








def summer()
    loop_list = looper()
    sum = 0
    loop_list.each do |sumnasty|
        if sumnasty.to_i > 9
            sum += sumnasty.to_i
        end
    end
    return sum
end

# def prime_lister()
#     looped = looper()
#     looped.each do |troof|
#         if is_prime(troof) == true
#             p "true"
#         elsif is_prime(troof) == false
#             p "false"
#         end
#     end
# end

# p prime_lister

# p summer()

# 797992

# p prime_list_creator(1000000)

p looper()
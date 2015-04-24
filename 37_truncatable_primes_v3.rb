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



def is_prime(num)
    if num == 1
        return false
    elsif num == 2
        return true            
    else
       count = 2
       while count < num
           if num % count == 0
               return false
           end
           count = count + 1
       end
       return true
    end
end
# p "is_prime"
# p is_prime(36363434)


# p prime_list_creator(100000)

def to_the_left_truncator(num)#, list)
    # if list.include?(num)
        num = num.to_s
        count = num.length-1 # "23456"
        while count >= 0
            p num
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
        p num
        num = num[1..-1]
        if is_prime(num.to_i) == false
            return false
        end
        count += 1
    end
# end
    return true
end

p to_the_left_truncator(3797)
p to_the_right_truncator(3797)
p to_the_left_truncator(3797)
p to_the_right_truncator(3797)


def looper()
    max = 1000000
    trunc_list = []
    count = 1
    sum = 0
    while count < max
        if count % 10001 == 0
            p count
        end
        if to_the_left_truncator(count) == true && to_the_right_truncator(count) == true && is_prime(count) == true
            trunc_list << count
            sum += count
        end
        count += 2
    end
    p sum
    p "and the sum is #{sum}"
    return trunc_list
end



# p prime_lister

# p summer()

# 797992

# p prime_list_creator(1000000)

# p looper()
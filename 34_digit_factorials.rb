# 34_digit_factorials.rb


# 145 is a curious number, as
# 1! + 4! + 5! = 1 + 24 + 120 = 145.

# Find the sum of all numbers which are
# equal to the sum of the factorial of their digits.

# Note: as 1! = 1 and 2! = 2 are not sums they are not included.


def factorializer(num)
    if num == 0 || num == 1
        return 1
    else
                   
        product = 1
        count = 2
        while count <= num
            product = product*count
            count+=1
        end
    end
    return product
end

def fact_dict()
    fact_dict = {0=>"",
        1=> "",
        2=>"",
        3=>"",
        4=>"",
        5=>"",
        6=>"",
        7=>"",
        8=>"",
        9=>""
    }
    (0..9).each do |count|
        fact_dict[count] = factorializer(count)
    end
    p fact_dict
    return fact_dict
end

def summer(num, dict)
    sum = 0
    num.to_s.each_char do |char|
        dope = char.to_i
        sum += dict[dope]
        # p dict
    end
    return sum
end


def mad_big_loopage()
    answer_list = []
    fact_dict = fact_dict()
    count = 1
    while count < 100000000
        if count % 1000000 == 0
            p "count is #{count}"
        end
        if count == summer(count, fact_dict)
            answer_list << count
        end
        count += 1
    end
    return answer_list
end


# p fact_dict
p mad_big_loopage
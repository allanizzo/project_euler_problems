30_digit_fifth_powers.rb

# time taken - 26:10.76   way way waaaay to long

# SOLVED

# Surprisingly there are only three numbers
# that can be written as the sum of fourth powers
# of their digits:

# 1634 = 1**4 + 6**4 + 3**4 + 4**4
# 8208 = 8**4 + 2**4 + 0**4 + 8**4
# 9474 = 9**4 + 4**4 + 7**4 + 4**4

# As 1 = 1**4 is not a sum it is not included.

# The sum of these numbers is 1634 + 8208 + 9474 = 19316.

# Find the sum of all the numbers that can be written as
# the sum of fifth powers of their digits.



# okey

def fifth_digitizer()
    big_sum = 0
    (1000..999999).each do |num|
        temp_sum = 0
        num.to_s.each_char do |num_char|
            temp_sum += (num_char.to_i)**5  # TESTING HERE WITH NUMS ** 4
        end
        if temp_sum == num
            p temp_sum
            big_sum+= temp_sum
        end
    end
    return big_sum
end

p fifth_digitizer

# what did we learn?
# - is there a better way to set the intial range rather than just guessing?
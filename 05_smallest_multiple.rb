# time taken - 30:35.4
# 	^ includes calculation time, which is a long time
	# imma leave now, still waiting at 8:06

# GOT IT, DID WELL.  TOOK A LONG TIME TO CALCULATE, SHOULD HAVE KEPT TRACK
# OF THE CALCULATION TIME


# 2520 is the smallest number that can be divided by each of the
# numbers from 1 to 10 without any remainder.


# What is the smallest positive number that is evenly
# divisible by all of the numbers from 1 to 20?


# seems simple enough

# we might be able to do this by winding up an number (starting at 21) and checking if
# 	its divisble by (1..20) without remainder

# 	this way we catch the smallest one when its ready

def one_to_twenty_mod_zero(number)
	(1..20).each do |n|
		if (number % n) > 0 || number == 0
			return false
		end
	end
	return true
end


def smallest_multiple()
	num = 0
	while true
		p "num is #{num}"
		if one_to_twenty_mod_zero(num) == true
			return num
		else
			num +=20
		end
	end
end

p smallest_multiple

# ANSWER => 232792560

# what did we learn?
# - took a long time to calculate, stepping up by 1 would have been a disaster
# 	^ stepping up by 20 (because the number has to be divisible by 20) was a good
# 	idea even though it still took forever to calculate
# - overall you got the bones of code together pretty quickly, maybe 10 mins or less
#   so i think thats an improvement
# - good use of range iterator (num1..num2).each

# - really my only comment is that you should have started stepping by 20 from the
# 	beginning.






# If the numbers 1 to 5 are written out in words:
# one, two, three, four, five,
# then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were
# written out in words,
# how many letters would be used?


# NOTE: Do not count spaces or hyphens. For example,
# 342 (three hundred and forty-two) contains 23 letters
# and 115 (one hundred and fifteen) contains 20 letters.
# The use of "and" when writing out numbers is in compliance
# with British usage.


def one_to_one_thousand()
	one_to_nine = {1 => "one", 2 => "two",
				3 => "three", 4 => "four",
				5 => "five", 6 => "six",
				7 => "seven", 8 => "eight",
				9 => "nine"
				}
	ten_to_nineteen = {10 => "ten", 11 => "eleven",
						12 => "twelve", 13 => "thirteen",
						14 => "fourteen", 15 => "fiftenn",
						16 => "fifteen", 17 => "seventeen",
						18 => "eighteen", 19 => "nineteen"		
						}
	twenty_to_ninety = {20 => "twenty", 30 => "thirty",
						40 => "forty", 50 =>"fifty",
						60 => "sixty", 70 => "seventy",
						80 => "eighty",90 => "ninety"
						}					

	hundreds = {100=>"one hundred", 200 => "two hundred",
				300 => "three hundred", 400 => "four hundres",
				500 => "five hundred", 600 => "six hundred",
				700 => "seven hundred", 800 => "eight hundred",
				900 => "nine hundred"}

	one_thousand = {1000 => "one thousand"}			

	(1..100).each do |num|
		if num < 10
			p one_to_nine[num]
		elsif num < 20
			p ten_to_nineteen[num]
		elsif num < 100
			if num % 10 == 0
				p twenty_to_ninety[num]
			else
				ones_place = num % 10
				p "#{twenty_to_ninety[num-ones_place]} #{one_to_nine[ones_place]}"
			end
		end
				
	end
end

p one_to_one_thousand()






# time taken - a lot

# SOLVED 


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

	mega_string = ""

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

	(1..1000).each do |num|
		if num < 10
			# p one_to_nine[num]
			mega_string << " " + one_to_nine[num]
		elsif num < 20
			# p ten_to_nineteen[num]
			mega_string << " " + ten_to_nineteen[num]
		elsif num < 100
			if num % 10 == 0
				# p twenty_to_ninety[num]
				mega_string << " " + twenty_to_ninety[num]
			else
				ones_place = num % 10
				# p "#{twenty_to_ninety[num-ones_place]} #{one_to_nine[ones_place]}"
				mega_string << " " + "#{twenty_to_ninety[num-ones_place]} #{one_to_nine[ones_place]}"
			end
		elsif num < 1000
			if num %100 == 0
				# p hundreds[num]
				mega_string << " " + hundreds[num]
			else
				hundreds_remainder = num % 100
				if hundreds_remainder < 10
					# p "#{hundreds[num - hundreds_remainder]} and #{one_to_nine[hundreds_remainder]}"
					mega_string << " " + "#{hundreds[num - hundreds_remainder]} and #{one_to_nine[hundreds_remainder]}"
				elsif hundreds_remainder < 20
					# p "#{hundreds[num - hundreds_remainder]} and #{ten_to_nineteen[hundreds_remainder]}"
					mega_string << " " + "#{hundreds[num - hundreds_remainder]} and #{ten_to_nineteen[hundreds_remainder]}"
				elsif hundreds_remainder < 100
					if hundreds_remainder % 10 == 0
						# p "#{hundreds[num - hundreds_remainder]} and #{twenty_to_ninety[hundreds_remainder]}"
						mega_string << " " + "#{hundreds[num - hundreds_remainder]} and #{twenty_to_ninety[hundreds_remainder]}"
					else
						tens_remainder = hundreds_remainder % 10
						# p "#{hundreds[num - hundreds_remainder]} and #{twenty_to_ninety[hundreds_remainder - tens_remainder]} #{one_to_nine[tens_remainder]}"
						mega_string << " " + "#{hundreds[num - hundreds_remainder]} and #{twenty_to_ninety[hundreds_remainder - tens_remainder]} #{one_to_nine[tens_remainder]}"
					end
				end
			end
		elsif num == 1000
			# p one_thousand[num]
			mega_string << " " + one_thousand[num]
				
		end
				
	end
	return mega_string
end

# p one_to_one_thousand()


def char_count(string)
	char_count = 0
	string.each_char do |char|
		if char.match(/[a-z]/)
			char_count += 1
		end
	end
	return char_count
end

p char_count(one_to_one_thousand())



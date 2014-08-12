# time taken - long time, lots of hard coding
# took a while to put the different elements of the
# problem together

# SOLVED


# You are given the following information,
# but you may prefer to do some research for yourself.

# 1 Jan 1900 was a Monday.
# Thirty days has September,
# April, June and November.
# All the rest have thirty-one,
# Saving February alone,
# Which has twenty-eight, rain or shine.
# And on leap years, twenty-nine.

# A leap year occurs on any year evenly divisible by 4,
# but not on a century unless it is divisible by 400.
# How many Sundays fell on the first of the month during
# the twentieth century (1 Jan 1901 to 31 Dec 2000)?


def counting_sundays()

	sunday_count = 0

	month_hash = {"January" => 31, "February" => 28, "March"=>31, "April" => 30,
				"May"=>31, "June" => 30, "July"=>31, "August"=>31, "September"=>30,
				"October"=>31, "November"=>30, "December"=>31}

	month_stack = %w[January February March April May
					June July August September October
					November December]

	week_stack = %w[Monday Tuesday Wednesday Thursday Friday Saturday Sunday]	
	#starting on 1 Jan 1900 - Monday
	year = 1900
	month_count = 1
	while year < 2001
		day_count = 1
		# the below works because the year 2000 % 400 == 0
		# if we were to expand this we would need to account for
		# something like 2100 % 400 != 0 and therefore isnt a leap year
		if year % 4 == 0
			month_hash["February"] = 29
		elsif year % 4 != 0
			month_hash["February"] = 28
		end
	
		while day_count < month_hash[month_stack[0]]
			if (day_count == 1) && (week_stack[0] == "Sunday") && (year > 1900)
				sunday_count += 1
			end
			day_count += 1
			# p day_count
			transfer = week_stack.shift()
			week_stack << transfer
		end
		month_count += 1
		mo_transfer = month_stack.shift()
		# p mo_transfer
		month_stack << mo_transfer
		if month_count == 13
			# add one to year and shift months again
			year += 1
			month_count = 1
		end
	end
	p sunday_count
	return sunday_count
end

counting_sundays

# what did we learn here??
# - using stacks to tumble through days in the week and months in year
# - use of main loop to track years
# - use of nested loop to track day count and month count (changing month count)

# - you need to be careful with your terminating conditions!!
# 	^ day_count < month_hash[month_stack[0]] works because later in the
# 	code block, it updates to the last day of the month and then
# 	tumbles the week
# 	^ same thing with the month_count

# - your counts need to start at 1 because the first day starts at 1 (obviously)	



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
	month_hash = {"January" => 31, "February" => 28, "March"=>31, "April" => 30,
				"May"=>31, "June" => 30, "July"=>31, "August"=>31, "September"=>30,
				"October"=>31, "November"=>30, "December"=>31}
	#starting on 1 Jan 1900 - Monday
	year = 1900
	current_month = "January"
	while year < 2001
		day_count = 0
		while day_count < days_in_month 

			# REMEMBER TO CATCH LEAP YEARS BY ADDING TO THE KEY'S VALUE




		# the code below keeps track of the days of the week by cycling them
		# through the stack
		# week_stack = %w[Monday Tuesday Wednesday Thursday Friday Saturday Sunday]
		# 7.times do 
		# 	p week_stack
		# 	transfer = week_stack.shift()
		# 	week_stack << transfer
		# end

		month_stack = %w[January February March April May June July August September October November December]

	end
end

counting_sundays

# ok thinking it through

# ultimately, we need to tumble through a bunch of days and count up
# when a sunday hits the first of the month
# 	need...
# 	a way to check days of week
# 	keep track of years
# 	months etc...
# 	a way to check if its the first of the month
# 	an overall calendar structure to keep track of various things
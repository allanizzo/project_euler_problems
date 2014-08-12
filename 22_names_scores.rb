# no timer, took a while to figure out how to process the file coming in


# solved, albeit clunky

# Using names.txt (right click and 'Save Link/Target As...'), a
# 46K text file containing over five-thousand first names, begin by
# 	sorting it into alphabetical order. Then working out the alphabetical
# 	value for each name, multiply this value by its alphabetical position
# 	in the list to obtain a name score.

# For example, when the list is sorted into alphabetical
# order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is
# the 938th name in the list. So, COLIN would obtain a score of
# 938 × 53 = 49714.

# What is the total of all the name scores in the file?

def cleaner(garbage)
	not_garbage = ""
	garbage.each_char do |char|
		if char.match(/[A-Z]/) || char.match(/[a-z]/)
			not_garbage << char
		end
	end
	return not_garbage
end

def score_label_maker()
	score_hash = {}
	score = 1
	("A".."Z").each do |letter|
		# p letter
		score_hash[letter] = score
		score += 1
	end
	return score_hash
end
# p score_label_maker

def scorer(string, index)
	score_hash = score_label_maker()
	score = 0
	string.each_char do |char|
		score += score_hash[char]
	end
	return score*index
end

def name_score()
	mega_super_total = 0
	super_duper = []
	names = File.read("names.txt")

	names.split(",").each do |garbage|
		super_duper << cleaner(garbage)
	end
	# p super_duper.sort
	manual_index = 1
	# p super_duper.sort
	super_duper.sort.each do |name|
		mega_super_total += scorer(name,manual_index)
		manual_index += 1
	end

	return mega_super_total

end

# p scorer("COLIN", 938)

p name_score
p "okey"

# what did we learn here?
# - could go more into importing from text files
# 	^ why you were getting garbage upon the file import
# - SORTING - you were sorting slashes at first so werent getting anywhere
	# had to clean the mess
# - you can make RANGES with letters ("a".."z") or upcase.  Make sure to have as strings.
# - i think you are really getting the hang of short, sweet methods
# - if you call "w" in a readlines or each_line, you will overwrite whats there
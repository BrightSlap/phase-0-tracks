# real_name = "Felicia Torres"
# method split
# method reverse
# vowel array, 
# method to change vowels to next vowel
# method to change consonants to next consonant

def reverse(real_name)
	reverse = real_name.split(' ').rotate
	reverse_name = reverse.join(' ')
end

# reverse("Felicia Torres")



def next_vowel(name)
	vowels = ["a", "e", "i", "o", "u"]
	name2 = name.split(//)
	vowel_change = name2.map do |letter|
		if vowels.include?(letter)
			vowels.rotate(1)[vowels.index(letter)]
		else
			letter
		end
	end
	vowel_change_name = vowel_change.join
end

def next_consonant(name)
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y" ,"z"]
	name3= name.downcase.split(//)
	consonant_change = name3.map do |letter|
		if consonants.include?(letter)
			consonants.rotate(1)[consonants.index(letter)]
		else
			letter
		end
	end
	consonant_change1 = consonant_change.join.split(' ')
	consonant_change1[1].capitalize!
	consonant_change1[0].capitalize!
	final_alias = consonant_change1.join(' ')
end

next_consonant(next_vowel(reverse("Felicia Torres")))

alias_database = {}
real_name = ' '
until real_name == "quit"
	puts "Who would you like to create an alias for?"
	real_name = gets.chomp.to_s
	if real_name == "quit"
		break
	end
	p next_consonant(next_vowel(reverse(real_name)))
	real_name.to_sym
	alias_database[real_name] =  next_consonant(next_vowel(reverse(real_name)))
end

alias_database.each do |real , psuedonym|
	p "#{psuedonym}'s real name is #{real}."
end
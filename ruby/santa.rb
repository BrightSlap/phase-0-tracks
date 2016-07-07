# define santa class
# method speak
# print "ho,ho,ho! haaappy holidays!"
# end

# eat_milk_and_cookies(cookie_type)
# @cookie_type = cookie_type
# prints "That was a good #{cookie_type}!"
# end

# initialize
# prints "Initializing Santa..."
# end


class Santa
	
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
	end

	def speak
		puts "Ho, ho, ho! Happy Holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end
	
	def raindeer_ranking
		raindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end
	
	def age
		@age = 0
	end
end

santas = []
example_genders = ["female", "bigender", "male", "N/A"]
example_ethnicities = ["latino", "white", "asian", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

p santas
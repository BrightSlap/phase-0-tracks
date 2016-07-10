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

	attr_reader :raindeer_rank, :ethnicity
	attr_accessor :gender, :age
	
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		puts "This Santa is a #{@gender} #{@ethnicity}"
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
	
	def age(number)
		age = number
		@age = age
		puts "This santa is #{@age} years old."
	end

	def get_mad_at(rank, raindeer_name)
		raindeer_rank = rank
		raindeer_rank.delete(raindeer_name)
		raindeer_rank << raindeer_name
		@raindeer_rank = raindeer_rank
		puts "This santa's raindeer ranking goes: #{@raindeer_rank}"
	end


	# def gender= (new_gender)
	# 	@gender = new_gender
	# end
	
	# def age
	# 	@age
	# end
	
	# def ethnicity
	# 	@ethnicity
	# end
		
end

# raindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"] 
# p santa = Santa.new("attack helicopter", "metal")
# p santa.get_mad_at(raindeer, "Rudolph")
# p santa.get_mad_at(raindeer, "Blitzen")
# p santa.gender = "female"

# santas = []
# example_genders = ["female", "bigender", "male", "attack helicopter", "N/A"]
# example_ethnicities = ["latino", "white", "asian", "metal", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

# p santas


example_genders = ["female", "bigender", "male", "attack helicopter", "N/A"]
example_ethnicities = ["latino", "white", "asian", "metal", "N/A"]
raindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"] 
50.times do |i|
	new_genders = example_genders.shuffle
	new_ethnicities = example_ethnicities.shuffle
  	santa = Santa.new(new_genders[1], new_ethnicities[1])
	random_raindeer = raindeer.shuffle
	santa.get_mad_at(random_raindeer, random_raindeer[1])
	santa.age(rand(140))
end
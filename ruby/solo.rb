# dragon class
# @age = whelp, young, adult
# @type = drake, wyrm, wyvern, serpent
# @color = red, black, green, bronze, silver, gold

# method speak(years)
# @sleep_time = years
# "who dares disturb my slumber of #{@sleep_time} years?!"
# end

# method trick
# "check out my sweet treasure trove over there"
# end

# method breath attack
# "WHOOOOOOMPH!"
# end


class Dragon
	attr_reader :age, :sleep_time
	attr_accessor :type, :color

	def initialize(age, type, color)
		@age = age
		@type = type
		@color = color
		puts "The sleeping dragon is a #{@age} #{@color} #{@type}"
	end

	def speak(years)
		@sleep_time = years
		puts "Who dares disturb my slumber of #{@sleep_time} years!?"
	end

	def trick
		puts "Check out my sweet treasure trove over there *snickers*"
	end

	def breath_attack
		puts "WHOOOOOOMPH! *#{@color} embers*"
	end
end

dragon_type = ["Drake", "Serpent", "Wyrm", "Wyvern"]
dragon_color = ["Black", "Green", "Red", "Bronze", "Gold", "Silver"]
dragon_age = ["Adult", "Young", "Whelp"]

dragon_color.length.times do |i|
	dragon = Dragon.new(dragon_age.shuffle[1], dragon_color[i], dragon_type.shuffle[1])
	dragon.speak(rand(60))
	dragon.trick
	dragon.breath_attack(dragon_color[i])
end

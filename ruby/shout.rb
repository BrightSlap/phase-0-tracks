# module Shout
#   # we'll put some methods here soon, but this code is fine for now!
#    def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yell_happily(words)
#   	words + "!!" + " :D"
#   end

# end

# Shout.yell_angrily("Curses")
# Shout.yell_happily("Nice")

module Shout
	def round(subject)
		puts "Let's get in one more round of #{subject}!"
	end
end

class Drunkard
	include Shout
end

class Player
	include Shout
end

drunkard = Drunkard.new
drunkard.round("whiskey")

player = Player.new
player.round("paintball")
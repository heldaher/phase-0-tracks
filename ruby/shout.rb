#Release 0 and 1

#module Shout
#  def self.yell_angrily(words)
#  	words + "!!!" + " :("
#  end
#
#  def self.yelling_happily(words)
#  	words + "hohohoho" + ":)"
#  end
#end

#require_relative 'shout'
#p Shout.yelling_happily("hey")
#p Shout.yell_angrily("hello")

#Release 3
module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
  	words + " woohoo" + ":)"
  end
end

class Coach
	include Shout
end

class Sargeant
	include Shout
end

coach = Coach.new
p coach.yelling_happily("good job team")

sargeant = Sargeant.new
p sargeant.yell_angrily("Attention")

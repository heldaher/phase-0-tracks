module Shout
  def self.yell_angrily(words)
  	words + "!!!" + " :("
  end

  def self.yelling_happily(words)
  	words + "hohohoho" + ":)"
  end
end

#require_relative 'shout'
p Shout.yelling_happily("hey")
p Shout.yell_angrily("hello")


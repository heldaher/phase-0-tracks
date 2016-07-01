reindeer_ranking = [
	"Rudolph", "Dasher", "Dancer", "Prancer", 
	"Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

p reindeer_ranking

age = 0

class Santa

	attr_reader :age, :ethnicity
	attr_accessor :gender

#	def initialize (gender, ethnicity, beard_description, weight)
	def initialize (gender, ethnicity, age)
		#puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@age = age
#		@beard_description = beard_description
#		@weight = weight
	end

	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie_type) 
		puts "That was a good #{cookie_type}!"
	end

	#getter
#	def age
#		@age
#	end
#
#	def ethnicity
#		@ethnicity
#	end

	#setter
	def celebrate_birthday(age)
		@age = age + 1
	end

#not sure how to get this to work
	def get_mad_at=name
	#	reindeer_ranking.insert(8,reindeer_ranking.delete_at(reindeer_ranking.index(name)))
		reindeer_ranking = [
		"Rudolph", "Dasher", "Dancer", "Prancer", 
		"Vixen", "Comet", "Cupid", "Donner", "Blitzen"].push(name)

		#reindeer_ranking.push(name)
	end

#	def gender=(new_gender)
#		@gender = new_gender
#	end

end


#Driver code - release 0
#sugar = Santa.new
#sugar.speak
#sugar.eat_milk_and_cookies("sugar cookie")

#Driver code - release 1
#santas = []
#example_genders = ["agender", "female", "bigender", 
#	"male", "female", "gender fluid", "N/A"]
#example_ethnicities = ["black", "Latino", "white", 
#	"Japanese-African", "prefer not to say", 
#	"Mystical Creature (unicorn)", "N/A"]
#example_beards = ["white", "poofy", "mustache only", 
#	"cool hipster", "the Moses", "stubble", "N/A"]
#example_weights = ["very large", "large", "one too many cookies", 
#	"five too many cookies", "large", "avid soul cyclist", 
#	"should eat more cookies!"]

#example_genders.length.times do |i|
#  santas << Santa.new(example_genders[i], example_ethnicities[i],
#  	example_beards[i], example_weights[i])
#end
#
#p santas

#Release 2 driver code
#santa = Santa.new("male", "korean", "poofy", "eat more cookies")
#puts "#{santa.ethnicity} Santa is not very old at the young age of 
	#{santa.celebrate_birthday(age)}"
#santa.get_mad_at("henri")
#p reindeer_ranking

#reindeer_ranking.push("henri")
#p reindeer_ranking

#p santa
#santa.gender = "female"
#p santa

#Release 4 - create lots of santas

example_ethnicities = ["black", "Latino", "white", 
	"Japanese-African", "prefer not to say", 
	"Mystical Creature (unicorn)", "N/A"]
example_genders = ["agender", "female", "bigender", 
	"male", "female", "gender fluid", "N/A"]

#Loop to make 50 instances
  index = 0
  while index < 50
  	age = rand(140)
  	santa = Santa.new(example_genders.sample, example_ethnicities.sample, age)
 	puts "#{santa.gender} #{santa.ethnicity} #{santa.age}"
  index += 1
  end





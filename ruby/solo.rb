#Release 0 - Design a class
#Class - Basketball Arena
#Attributes -
#1) seat_capacity (int)
#2) food_quality (string)
#3) location (string)
#Methods
#1) exciting_video (puts "look at the jumbotron")
#2) elbow_room (seat_capacity/3)
#3) food_deal (puts "half-off...")

#release 1 - Write the class
class Basketball_Arena
	attr_reader :seat_capacity, :food_quality
	attr_accessor :location

	def initialize(seat_capacity, food_quality, location)
		@seat_capacity = seat_capacity
		@food_quality = food_quality
		@location = location
	end	

	def exciting_video
		puts "Look up at the jumbotron for an exciting video!"
	end

	def elbow_room(seat_capacity)
		spacious_seating = seat_capacity/3
	end

	def method_name(food)
		puts "Half-off #{food}"
	end
end

#Driver code
arena = Basketball_Arena.new(20000, "excellent", "middle of city")
p arena
p arena.elbow_room(900)

#Release 2

puts "Ready to create a basketball arena description?"

continue = "yes"
seat_capacities = []
food_qualities = []
locations = []

until continue == "no"
puts "Please choose a seat_capacity for the arena"
seat_capacity = gets.chomp.to_i
puts "Please provide an adjective describing the food_quality options in the arena"
food_quality = gets.chomp
puts "Please provide the location of the arena"
location = gets.chomp
#array
seat_capacities << seat_capacity
food_qualities << food_quality
locations << location
#option to continue or end loop
puts "Continue to create instances of basketball arenas? (yes/no)"
continue = gets.chomp
end

#loop through array to print results
index = 0
while index < seat_capacities.length
	puts "This arena holds #{seat_capacities[index]} and provides #{food_qualities[index]} food, located in #{locations[index]}"
	index +=1
end







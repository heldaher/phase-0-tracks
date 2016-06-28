class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

#Speak method
  def speak(integer)
  	integer.times { puts "Woof" }
  end

#Roll over method
  def roll_over
  	puts "rolls over"
  end

#Dog years method
  def dog_years(human_years)
  	dog_age = human_years * 7
  	puts "age in dog years equals #{dog_age}"
  end

#New trick - sit
  def sit
  	puts "sit"
  end

#Initialize
  def initialize
  	puts "Initializing new puppy instance ..."
  end

end

#####New Class
class Flower

  def initialize
  	puts "Initializing new flower instance ..."
  end

  def grow(integer)
  	puts "The stem grew #{integer} inches"
  end

  def bloom
  	puts "The flower bloomed!"
  end


end


#Driver code
Princess = Puppy.new
Princess.fetch('ball')
Princess.speak(3)
Princess.roll_over
Princess.dog_years(5)
Princess.sit

Rose = Flower.new
Rose.grow(4)
Rose.bloom

#Loop to make 50 instances
  index = 0
  Flower_array = []
  while index < 50
  	Flower.new
  	Flower_array << Flower.new
  index += 1
  end

p Flower_array

#Iterate over data structure
Flower_array.each do |flower| 
	flower.grow(6)
	flower.bloom
end 






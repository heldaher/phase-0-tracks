planets_first_letter = ["N","E", "V", "M", "M"]
closest_to_sun = { first: "Mercury", second: "Venus", third: "Earth" }

p "original data"
p planets_first_letter
p closest_to_sun

p "Uranus is the seventh biggest planet"

#.each for array
planets_first_letter.each do |planet_letter|
	puts "The first letter of the next biggest planet is #{planet_letter}"
end

#.each for hash
closest_to_sun.each do |proximity, planet|
	puts "The #{proximity} planet after the sun is #{planet}"
end

puts "After .each call"
p planets_first_letter
p closest_to_sun

#.map! for array
planets_first_letter.map! do |planet_letter|
	planet_letter.next
end

puts "After .map! call"
p planets_first_letter

#Release 2
numbers = [1,2,3,4]
letters = { a: "A", b: "B", c: "C", d: "D" }

p numbers
p letters

#First challenge
#Array
#numbers.delete_if {|number| number >= 3 }   
#p numbers
#Hash
#letters.delete_if {|lowercase, uppercase| uppercase == "D" }
#p letters

#Second challenge
#Array
#numbers.keep_if {|number| number <= 3 }
#p numbers
#Hash
#letters.keep_if {|lowercase, uppercase| uppercase == "D" }
#p letters

#Third challenge
#Array
numbers.reject! {|number| number >= 3 }   
p numbers
#Hash
letters.reject! {|lowercase, uppercase| uppercase == "D" }
p letters




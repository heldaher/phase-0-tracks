puts "What is the hamster's name?"
	hamster_name = gets.chomp
puts "What is the volume level of the hamster from 1 to 10?"
	hamster_volume = gets.chomp
puts "What is the hamster's fur color?"
	hamster_fur_color = gets.chomp
puts "Is the hamster a good candidate for adoption (true or false)?"
	hamster_good_candidate = gets.chomp
puts "What is the hamster's estimated age?"
	hamster_age = gets.chomp

#convert variables to different data type if appropriate

hamster_volume = hamster_volume.to_i

if hamster_good_candidate == "true"
	hamster_good_candidate = true
elsif hamster_good_candidate == "false"
	hamster_good_candidate = false
else puts "Response not understood"
end

if hamster_age != "" 
	hamster_age = hamster_age.to_i
else hamster_age = nil
end

#test conversion
=begin
p 3 + hamster_volume
if hamster_good_candidate 
	puts "yes"
else 
	puts "no"
end
p hamster_age
=end

#print data to console
puts "Hamster Overview"
puts "Hamster Name= #{hamster_name}" 
puts "Hamster Age = #{hamster_age}"
puts "Hamster Fur Color=" 
	p hamster_fur_color
puts "Hamster Volume=" 
	p hamster_volume
puts "Is the hamster a good candidate for adoption?=" 
	p hamster_good_candidate
puts "Thank you for the information!"

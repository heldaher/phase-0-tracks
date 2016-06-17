#Ask questions
puts "What is your name"
	user_name = gets.chomp
puts "How old are you?"
	user_age = gets.chomp
puts "What year were you born?"
	user_birth_year = gets.chomp
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	user_garlic_ok = gets.chomp
puts "Would you like to enroll in the company’s health insurance?"
	user_hi_ok = gets.chomp


#Conditional logic
vampire_conclusion = ""

if 
	(user_age.to_i == 2016 - user_birth_year.to_i) && 
	((user_garlic_ok == "y") || (user_hi_ok == "y"))
	vampire_conclusion = "Probably not a vampire"
end

if 
	(user_age.to_i != 2016 - user_birth_year.to_i) &&
	((user_garlic_ok == "n") || (user_hi_ok == "n"))
	vampire_conclusion = "Probably a vampire"
end

if 
	(user_age.to_i != 2016 - user_birth_year.to_i) &&
	((user_garlic_ok == "n") && (user_hi_ok == "n"))
	vampire_conclusion = "Almost certainly a vampire"
end

if 
	user_name == "Drake Cula" || 
	user_name == "Tu Fang"
	vampire_conclusion = "Definitely a vampire"
end

p vampire_conclusion











#Start of program
puts "How many employees will be processed?"
	employees_to_process = gets.chomp
	counter_variable = 0

#loop on vampire questions
until 
counter_variable.to_i == employees_to_process.to_i


	#loop on allergies
	puts "Please name any allergies (type 'done' when finished)"
		allergy = gets.chomp
	until 
		allergy == "done" || allergy == "sunshine"
		counter_variable = 0
		puts "Please name any allergies (type 'done' when finished test test)"
		allergy = gets.chomp
	end
	
	if 
	allergy == "done"
	
	
	(
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
	
	if
		vampire_conclusion = "Probably not a vampire" ||
		"Probably a vampire" ||
		"Almost certainly a vampire" ||
		"Definitely a vampire"
		p vampire_conclusion
	else
		puts "Results inconclusive"
	end
	)
	
	##sunshine skip
	elsif
		allergy == "sunshine"
		puts "Probably a vampire"
	else
	end

#end loop
counter_variable += 1
end


#plot twist
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."






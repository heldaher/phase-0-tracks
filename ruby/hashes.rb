#Pseudocode:
#1) hash with client details
# allow an interior designer to enter the details of a given client: the client's name, age, number of children, decor theme, and so on
#2) include mix of sring, int, and bool
#3) use symbols, unless string necessary
#4) "puts" to prompt user for this info
#5) convert user input to app. data type
#6) "p" hash back to screen after all ?'s answered'
#7) "puts" to give user opportunity toupdate a key. If "none", skip, if user says some key, then ask for new value and update key.
# (strings have methods that will turn them into symbols). no need to andle user errors
#8) "p" latest version of hash and exit the program

interior_designer_input = {}

#ask user for values of each key
puts "Name"
client_name = gets.chomp

puts "Age"
age = gets.chomp.to_i

puts "Number of children"
number_of_children = gets.chomp.to_i

puts "Decor theme"
decor_theme = gets.chomp

puts "Bright colors(y/n)"
bright_colors = gets.chomp
if bright_colors == "y"
	bright_colors = true
else bright_colors == "n"
	bright_colors = false
end

interior_designer_input = 
{
	Client_Name: client_name,
	Age: age,
	"Number of children" => number_of_children,
	Decor_Theme: decor_theme,
	Bright_Colors: bright_colors
}

p interior_designer_input

#Ask user if they would like to update a key
puts "Would you like to update a key (type 'none' or name of key)?"
key_update = gets.chomp

#Update key if necessary
if key_update == "none"
	p "ok"
else
	p "Please provide updated value" 
	updated_value = gets.chomp
		if key_update == "client_name"
			interior_designer_input[:Client_Name] = updated_value
		elsif key_update == "age"
			interior_designer_input[:Age] = updated_value
		elsif key_update == "number_of_children"
			interior_designer_input["Number of children"] = updated_value
		elsif key_update == "decor_theme"
			interior_designer_input[:Decor_Theme] = updated_value
		elsif key_update == "bright_colors"
			interior_designer_input[:Bright_Colors] = updated_value
		end
end

p interior_designer_input

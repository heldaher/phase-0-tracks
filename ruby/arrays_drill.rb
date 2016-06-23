def show_array_values(x,y,z)
	array = [x,y,z]
end

def add_to_array(arr,item)
	array = [arr,item]
end


bball_teams = []
#p bball_teams

bball_teams = ["lakers", "warriors", "wizards", "cavs", "bulls"]
#p bball_teams

bball_teams.delete_at(2)
#p bball_teams

bball_teams.insert(2, "thunder")
#p bball_teams

bball_teams.delete("lakers")
#p bball_teams

if
	bball_teams.include?("pelicans") == TRUE
	#puts "yes, this team is included"
else
	bball_teams.include?("pelicans") == false
	#puts "no this team is not included"
end

fruits = ["apple", "orange", "pear"]

bball_teams_and_fruit = bball_teams + fruits
#p bball_teams_and_fruit

#calling method
#puts show_array_values(bball_teams,"mango","kiwi")

puts add_to_array([],"a")
puts add_to_array(["a", "b", "c", 1, 2], 3)
puts add_to_array(bball_teams,fruits)




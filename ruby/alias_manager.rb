#Release 0 
#Swapping the first and last name.
# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'



#Step 4 - change vowels to next vowel
# writing a next_vowel method that takes a vowel character and returns the next vowel character.
def next_vowel(character)
vowels = ['a','e','i','o','u']
	if 
		character == "a"
		character = "e"	
	elsif
		character == "e"
		character = "i"
	elsif
		character == "i"
		character = "o"
	elsif
		character == "o"
		character = "u"
	elsif
		character == "u"
		character = "a"
	end
end

#Step 5 - change consonants to next consonant
# writing a next_consonant method that takes a consonant character and returns the next consonant character.
def next_consonant(character)
	consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
	#take character in cons. array and go to next consonant
	if character == "z"
		character = "b"
	else
	character_index = consonants.index(character) + 1 
	character = consonants[character_index]
	end
end

#Step X - run algortihm to change name

def letter_change(array)
#Declare necessary arrays
	vowels = ['a','e','i','o','u']
	consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
	index = 0
	while index < array.length
		s = array[index]
		if	vowels.include?(s)
			array[index] = next_vowel(array[index])
		elsif consonants.include?(s)
			array[index] = next_consonant(array[index])
		end
		index += 1
	end
	return array.join('')
end



#Release 1
#Provide a user interface that lets a user enter a name and get a fake name back. Let the user do this repeatedly until they decide to quit by typing 'quit'. (They might just hit Enter to continue.)


puts "Please enter a name or write 'quit'"
name = gets.chomp
until name == "quit"
	name_split = name.split(' ')
	name_swapped = name_split.reverse!
	name_swapped = name_swapped.join(' ')
	name_swapped = name_swapped.downcase
	name_swapped = name_swapped.chars
	p letter_change(name_swapped)
	puts "Please enter another name or write 'quit'"
	name = gets.chomp
end


















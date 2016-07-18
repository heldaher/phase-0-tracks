// Release 0 - task
// write a function that takes an array of words or phrases and returns the longest word or phrase in the array. 
// So if we gave your function the array of ["long phrase","longest phrase","longer phrase"], 
// it would return "longest phrase".

// Release 0 - psuedocode
// Create an empty array

var new_array = [];

// Write a function called greatest_length which takes an array as its argument
// Write a for loop. 
// For each item in the array, run item.length. 
// Add to new_array, which replaces the items with their length
// Return the max length

function greatest_length(array) {
	for (var i = 0; i < array.length; i++) 
		{new_array.push((array[i]).length)}
		console.log(Math.max.apply(Math, new_array));
}

// Release 1 - task
// write a function that takes two objects and checks 
// to see if the objects share at least one key-value pair

// Release 1 - pseudocode
// Write a function called sharePair which takes two objects as argument
// Write a for loop that:
//   - FOR each key in the 1st object, see if it is included (using indexOf) in the other object
//   - IF compared items are equal, than return true
//   - ELSE IF do the same for each value (as opposed to key) in the 1st ojbect
//   - ELSE return false
// Note that this would not work

function sharePair(object1,object2) {
	for (var i = 0; i < object1.length; i++)
		if ( (object2.indexOf(object1.keys[i])) != null) {
			console.log("true");
		} else if (object2.indexOf(object1.values[i]) != null) {
			console.log("true");}
		else {
			console.log("false");}
}

// Release 2 - task
// Write a function that takes an integer for length,
// and builds and returns an array of strings of the given length

// Release 2 - pseudocode
// Create variables:
//   - alphabet variable to take a string of the first 10 letters of the alphabet
//   - random_number variable to take a random number between 1 and 10
//   - random_word variable which will start off as an empty string but be populated later
//   - random_array which will start off an empty array but be populated later
//   - random_letter which will be a random index of the alphabet variable

var alphabet = "abcdefghij";
var random_number = (Math.floor((Math.random() * 10) + 1));
var random_word = ""
var random_array = []
random_letter = alphabet[random_number];

// Write a function called randomNumber to take a random number between 1 and 10
function randomNumber() {
  return (Math.floor((Math.random() * 10) + 1));
}

// Write a function called randomWord to generate a string of random letters (thus a random word)
// This would not properly work
function randomWord() {
  for (var y = 0; y <= randomNumber(); y++) {
	random_letter = alphabet[randomNumber()]
	}
 	return random_word = random_word + random_letter;
}

// Write a function called random_array
// The function takes an integer as an argument
// Write a for loop that calls the randomWord function [integer] times

function randomArray(x) {
  // First see if I can generate a random letter
  for (var i = 0; i < x; i++) {
	{randomWord};
    return random_array.push(random_word)
}


/////////////////////////////////////////////////////////////
// Driver code 

// Release 0
//greatest_length(["bernard","frank","toby","this should be the longest"]);
//greatest_length(["MJ","Kobe","Lebron"]);

// Release 1 - would not work
// var bball_players = {nickname: "MJ", age: 52};
// var football_players = {name: "Maradonna", age: 52};
// console.log(sharePair(bball_players,football_players));
// console.log(bball_players.length)

// Release 2 - would not work
randomArray(4);
console.log(random_array);


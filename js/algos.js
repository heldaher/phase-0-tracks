// write a function that takes an array of words or phrases and returns the longest word or phrase in the array. 
// So if we gave your function the array of ["long phrase","longest phrase","longer phrase"], 
// it would return "longest phrase".

// Release 0
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

// Release 1
// write a function that takes two objects and checks 
// to see if the objects share at least one key-value pair

// Write a function called share_pair which takes two objects as argument
// Write a for loop that:
//   - FOR each key in an object, see if it is INCLUDED in the other object
//   - IF compared items are equal, than return true
//   - ELSEIF items are not queal, than do the same for value
//   - ELSE return false

function share_pair(object1,object2) {
	for (var i = 0; i < object1.length; i++)
		{if ( (object2.indexOf(object1.key[i])) != null)
			console.log("true");
		elsif (object2.indexOf(object1.value[i]) != null)
			return true;
		else console.log("false");}
}


/////////////////////////////////////////////////////////////
// Driver code 

// Release 0
//greatest_length(["bernard","frank","toby","this should be the longest"]);
//greatest_length(["MJ","Kobe","Lebron"]);

// Release 1 - would not work
var bball_players = {nickname: "MJ", age: 52};
var football_players = {name: "Maradonna", age: 52};
console.log(share_pair(bball_players,football_players));











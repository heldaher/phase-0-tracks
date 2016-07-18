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

// Driver code
greatest_length(["bernard","frank","toby","this should be the longest","short"]);









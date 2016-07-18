// write a function that takes an array of words or phrases and returns the longest word or phrase in the array. 
// So if we gave your function the array of ["long phrase","longest phrase","longer phrase"], 
// it would return "longest phrase".

// Release 0
// Write a function called greatest_length
// Function takes an array (of words or phrases)
// return longest word or phrase in the array
//    Write a for loop. For each item in the array, run string.length. 
//	  Create a new array which takes replaces the items with their length
// 	  Return the max number

// function greatest_length(array) {
// 	for (var i = 0; i < array.length; i++) {
// 		return (array[i]).length
// 	}
// }

function greatest_length(array) {
	for (var i = 0; i < array.length; i++) {
		console.log((array[i]).length)
	}
}

// Driver code
console.log(greatest_length(["bernard","frank","toby"]))






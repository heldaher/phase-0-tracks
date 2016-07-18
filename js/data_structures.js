// declare color and name arrays
var color = ["red", "green", "yellow", "brown"];
var name = ["Ed", "Bob", "Linda", "Jane"];

color.push("purple");
name.push("Fred");

console.log(color);
console.log(name);

// declare horse object
// we were not able to get this one right - error message said "horse is not a function" but are attempts to fix it did not work
var horse = {"color": "name"};

for (var i = 0; i < name.length; i++) {
  console.log(horse(name[i]) = color[i]);
} 

// Release 2 - create an object
var car = {name: 'Honda', 'age': 3, isReliable: true};

function Car(name, age, isReliable) {

  console.log("Our new car:", this);
  
  this.name = name;
  this.age = age;
  this.isReliable = isReliable;

  this.drive = function() { console.log("Vroom!"); };
  
  console.log("CAR INITIALIZATION COMPLETE");
}

console.log("Let's build a car ...");

var anotherCar = new Car("Toyota", 8, true);
console.log(anotherCar);
console.log("Our New car is amazing:");
anotherCar.drive();
console.log("----");

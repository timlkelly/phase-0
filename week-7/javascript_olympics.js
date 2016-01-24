 // JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [1.25] hours.

// Warm Up

// Bulk Up

var sarahHughes = {
  name: "Sarah Hughes",
  event: "Ladies' Singles!"
}

var someoneElse = {
  name: "Some One",
  event: "Mens' swimming"
}

var athletes = [
  someoneElse,
  sarahHughes
]

function addWin(athleteArray){
  //add win property to each athlete
  for (var i = 0; i < athleteArray.length; i++){
    athletes[i].win = athletes[i].name + " won the " + athletes[i].event;
    console.log(athletes[i].win);
  }
}
// console.log(athletes.length);
console.log(addWin(athletes));

// Jumble your words

var string = 'Jumble your words!';
var reversed = [];

function reverse(array) {
  var split = array.split("");
  for (var i = 0; i < split.length; i++) {
    reversed.unshift(split[i]);
  }
  var output = reversed.join('');
  return output;
}

console.log(reverse(string));

// 2,4,6,8

var testArray = [0,1,2,3,5,63,4], evens =[];

function isItEven(numArray){
  for (var i = 0; i < numArray.length; i++){
    if(numArray[i] % 2 === 0){
      evens.push(numArray[i]);
    }
  }
  return evens;
}

console.log(isItEven(testArray));

// "We built this city"
function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?
  
  More about Javascript objects, their properties and constructor functions.

What are constructor functions?

  Constructor functions allow you to create objects that share similar properties but are different.
  They seem similar to classes in Ruby in that sense.

How are constructors different from Ruby classes (in your research)?

  Javascript constructors are instances of functions, while classes in Ruby are just a type of class.
  For example the string class in ruby is not a string.  It is a class with specific methods.
*/
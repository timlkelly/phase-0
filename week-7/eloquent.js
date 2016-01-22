// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var a = 1245, b = 2, c= 50;
console.log(a/b+c)

// prompt("What's your favorite food?")
// alert("Hey! That's my favorite too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

var triangleString = "", counter = 0;

while(counter < 8){
  triangleString += "#"
  console.log(triangleString);
  counter ++;
}

for (var startNum = 1; startNum <= 100; startNum++){
  if (startNum % 3 === 0 && startNum % 5 ===0){
    console.log("FizzBuzz")
  }else if (startNum % 3 === 0){
    console.log("Fizz")
  }else if (startNum % 5 === 0){
    console.log("Buzz")
  }else{
    console.log(startNum)
  }
}

// Functions

// Complete the `minimum` exercise.

var min = function (x,y){
  if (x < y){
    return x
  }else {
    return y
  }
}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Tim",
  age: 27,
  favoriteFood: ["pizza", "snacks", "desert"]
}
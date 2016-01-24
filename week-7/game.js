 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: 
// Overall mission: Create Jack and the Beanstalk game
// Goals: sell cow. grow beanstalk
// Characters: jack, giant
// Objects:  jack, cow, magic beans, giant
// Functions: sell cow, plant beans

// Pseudocode
//
// Create objects for jack, cow, and magic beans
// plant beans changes magic beans into beanstalk
// sell cow receive beans
//
// okay, I probably took some liberties with the story..

// Initial Code

/*

var jack = {
  name: "Jack",
  items: ["cow"]
}

var giant = {
  name: "Giant",
  items: ["Magic Goose", "Magic Harp"]
}

function inventory(char){
  console.log(char.name + " has: " + char.items)
}

function sellCow(){
  if (jack.items[0] === "cow"){
    // delete jack.items["cow"];
    jack.items = ["Magic Beans"];
    console.log("Jack sold the cow for some Magic Beans!")
  }else{
    console.log("What cow?");
  }
}

function plantBeans(){
  if (jack.items[0] === "Magic Beans"){
    // delete jack.items["Magic Beans"];  // Delete does not seem to be working? alternative: set array to []
    jack.items = [];
    console.log("Jack planted the Magic Beans")
    console.log("A giant bean stalk grew to the sky!")
  }else{
    console.log("You have no beans!");
  }
}

function steal(thief, victim){
  thief.items = [thief.items + victim.items];
  console.log(thief.name + " stole " + victim.name + "'s " + victim.items + "!");
  victim.items = [];
  
  // Failed attempts of trying to run through the giant's items to steal them individually.

  // var numOfItems = victim.items.length;
  // console.log(numOfItems);
  // while (numOfItems > 0){
  //   thief.items.unshift(victim.items);
  //   victim.items.shift();
  //   console.log(thief.name + " stole " + victim.name + "'s " + victim.items + "!");
  //   numOfItems--;
  // }

  // for (var i = 0; i < victim.items.length; i++){
  //   thief.items.unshift(victim.items[i]);
  //   victim.items.shift();
  //   console.log(thief.name + " stole " + victim.name + "'s " + victim.items[i] + "!");
  // }

  // if (victim.items.length > 0 ){
  //  thief.items.unshift(victim.items);
  //  thief.items = victim.items;
  //  delete victim.items;
  //  console.log(thief.name + " stole " + victim.name + "'s " + victim.items + "!");
  // }else{
  //  console.log("There's nothing to steal.");
  // }
}

*/

// Refactored Code

// Realized I could have refactored for smaller/simpler lines but did not due to readability.

var jack = {
  name: "Jack",
  items: ["cow"]
}

var giant = {
  name: "Giant",
  items: ["Magic Goose", "Magic Harp"]
}

function inventory(char){
  console.log(char.name + " has: " + char.items);
}

function sellCow(){
  if (jack.items.indexOf("cow") != -1){
    jack.items = ["Magic Beans"];
    console.log("Jack sold the cow for some Magic Beans!")
  }else{
    console.log("What cow?");
  }
  return jack.items;
}

function plantBeans(){
  if (jack.items.indexOf("Magic Beans") != -1){
    jack.items = [];
    console.log("Jack planted the Magic Beans");
    console.log("A giant bean stalk grew to the sky!");
    console.log("Jack climbed the beanstalk into the clouds where he finds a giant castle. Inside the castle he discovers a magic goose who lays golden eggs and a magic harp");
  }else{
    console.log("You have no beans!");
  }
  return jack.items;
}

function steal(thief, victim){
  thief.items = [thief.items + victim.items];
  console.log(thief.name + " stole " + victim.name + "'s " + victim.items + "!");
  victim.items = [];
  return thief.items;
}

// Driver code

//check starting inventory/items; added spaces for readability in console
inventory(jack);
inventory(giant);
console.log();
console.log();

// jack sell's the cow
console.log(sellCow());
console.log();

//check jack's inventory to test sellCow()
inventory(jack);
console.log();
console.log();

// jack plants magic beans (Okay, sure not factually true according to the fairytale..)
console.log(plantBeans());
console.log();
console.log();

// check inventory pre-steal
inventory(jack);
inventory(giant);
console.log();
console.log(steal(jack, giant));

//check inventory post-steal
inventory(jack);
inventory(giant);

// Alternative driver code, but if both are running, this will test the if/else statements.

inventory(jack);
sellCow();
plantBeans();
steal(jack, giant);

// Reflection
/*
What was the most difficult part of this challenge?
  
  Besides coming up with the idea for the project, I had some difficulty interacting with object's properties.  Specifically
  when I am trying to work with an array inside of an object.

What did you learn about creating objects and functions that interact with one another?

  I learned about constructor functions, although I did not use them because I did not think it would be very readable in this situation.
  Also learned about how to add and access properties inside of the object.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

  I used indexOf() which searches through an Array and returns the index of a particular property of the array.  If it is not found,
  then it returns -1.  I was looking for a method that checked if an array contained a specific property. And while indexOf does not
  act exactly how I was hoping for, specifically because I don't care where it is in the index, I realized that I could check if the result
  of indexOf would be -1 or rather, not -1 indicating that said property is present.

How can you access and manipulate properties of objects?

  You can access and manipulate object properties in two ways.  Either through dot notation or bracket notation.

  Dot notation access: anObject.aProperty
  Dot notation manipulation: anObject.aProperty = "a new value"

  Bracket notation access: anObject["a Property"] This is useful if the property you are accessing is two words, as you can not use dot notation in that case.
  Bracket notation manipulation: anObject["a Property"] = "new value"

*/
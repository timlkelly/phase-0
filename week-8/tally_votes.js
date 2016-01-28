// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/

/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
/*
INPUT: the vote object
OUTPUT: the officer list
STEPS:
Iterate through vote object to tally votes into the voteCount object.
Find the highest vote count for each position and assign that position to the winner.

*/
// __________________________________________
// Initial Solution

/*
var max = function(obj){
  var index = 0;
  var winner = "";
  for (name in obj){
    for (voted in obj[name]){
      // console.log(obj[name][voted]);
      if (obj[name][voted] > index){
        index = obj[name][voted];
        winner = obj[name];
      }
    }
  }
  console.log(winner);
  return winner;
}

for (var name in votes){
  for (var title in voteCount){
    if (voteCount[title][votes[name][title]] === undefined){
      voteCount[title][votes[name][title]] = 1
    } else {
      voteCount[title][votes[name][title]] += 1;
    }
  }  
}

// console.log(voteCount);

for (var name in voteCount){
  // console.log(voteCount[name]);
  for (var position in officers){
    if (officers[position] === undefined){
      officers[position] = max(voteCount);
    }
  }
}

// console.log(max(voteCount));

console.log(officers);
*/
// __________________________________________
// Refactored Solution

var voteCounter = function(casted_votes){
var winner = "";
var current_winning_tally = 0;
  for (var candidate in casted_votes){
    if (casted_votes[candidate] > current_winning_tally){
      current_winning_tally = casted_votes[candidate]
      winner = candidate
    }
  }
  // console.log(winner);
  return winner;
}

for (var name in votes){
  for (var title in voteCount){
    if (voteCount[title][votes[name][title]] === undefined){
      voteCount[title][votes[name][title]] = 1
    } else {
      voteCount[title][votes[name][title]] += 1;
    }
  }  
}

for (var name in voteCount){
  console.log(voteCount[name]);
  if (officers[name] === undefined){
    officers[name] = voteCounter(voteCount[name]);
  }
}

// __________________________________________
// Reflection
/*
What did you learn about iterating over nested objects in JavaScript?

  To be rather specific with naming your variables.  It is very easy to get lost inside
  of the nested object easily, especially when dealing so multiple nested objects.

Were you able to find useful methods to help you with this?

  Not really, we wrote our own function to determine the winner in each position.

What concepts were solidified in the process of working through this challenge?

  Accessing data in nested sequences and dot notation vs bracket notation.
  
*/
// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
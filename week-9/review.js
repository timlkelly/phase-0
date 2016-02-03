
// This is the reverse words challenge from the ruby review list

// PSEUDOCODE
/*
INPUT: a STRING "HELLO THERE"
OUTPUT: a STRING similar to the input but reversed. "THERE HELLO"
STEPS:
-Separate and store the input as individual words.
-recall the words in reverse order
-RETURN

*/

// Initial attempt; issue with adding last word to reversed.

// function reverseWords(originalInput){
//   var inputStorage = [];
//   inputStorage = originalInput.split(' ');
//   var reversed = [];
//   for (var i = 0; i < inputStorage.length; i++){
//     reversed = inputStorage[-1];
//     inputStorage.pop();
//     console.log(inputStorage);
//     console.log("pop");
//   }
//   console.log(reversed);
//   // return reversed;
// }


//Second attempt, MVP

// function reverseWords(originalInput){
//   var inputStorage = originalInput.split(' ');
//   var length = inputStorage.length;
//   length = length - 1;
//   var reversed = "";
//   for (var n = length; n >=0; n--){
//     reversed += inputStorage[n]  + " ";
//   }
//   return reversed;
// }


// REFACTOR

function reverseWords(originalInput){
  var inputStorage = [];
  inputStorage = originalInput.split(' ');
  reversed = inputStorage.reverse().join(' ');
  return reversed;
}


// DRIVER CODE

var testString = "Hello there cat!";
console.log(reverseWords(testString))

/* 
REFLECTION
What concepts did you solidify in working on this challenge? 
  Just more practice working with javascript. Nothing really too new here

What was the most difficult part of this challenge?
  Trying to get javascript to work as I intend it to.  With the starting background in Ruby, it's easy to fall
  back to that approach but then realize that Javascript doesn't always work that way.

Did you solve the problem in a new way this time?
  I actually hadn't solved this problem in Ruby yet, I took this from the Ruby review section on canvas, but 
  I imagine my refactored solution could work similarly in Ruby because of the methods. 

Was your pseudocode different from the Ruby version? What was the same and what was different?
  Again because I haven't done this one in Ruby yet, I can't really say. Though thinking about solving this in Ruby
  I really don't think my pseudocode would have been that different.  Perhaps it was general enough that it can apply 
  itself well to different languages.

*/
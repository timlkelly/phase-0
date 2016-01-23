
// Your previous Java content is preserved below:

// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Jon Schwartz.

// Pseudocode

/*
Input: Integer as an argument
Output: comma-separated integer as a string
Steps:

Covert to STRING or ARRAY to count the total number of digits in the integer.

Possibly reverse number.  Count every three digits and add a comma afterwards.  
Un-reverse string and RETURN
*/

// Initial Solution
/*
function addCommas(ourNumber){
  //convert ourNumber from integer to string to array
  var stringNum = ourNumber.toString();
  var numArray = stringNum.split("");
  var reversedArray = [];
  // iterate over ourNumber unshift into reversedArray
  for(var i = 0; i < numArray.length; i++){
    reversedArray.unshift(numArray[i]);
  }
// for (var i = 0; i < reversedArray.length; i++)
  
  var unreversedArray = [];
  var counter = 0;
  
  for (var i = 0; i < reversedArray.length; i++){
    if (counter === 3) {
      unreversedArray.unshift(",");
      counter = 0;
      unreversedArray.unshift(reversedArray[i]);
      counter++;
    } else {
      unreversedArray.unshift(reversedArray[i]);
      counter++;
    }
  }
  return unreversedArray.join("");
}
*/

// Refactored Solution

function addCommas(ourNumber){
  var stringNum = ourNumber.toString(), 
      numArray = stringNum.split(""),
      reversedArray = []; 
   
  for(var i = 0; i < numArray.length; i++){
    reversedArray.unshift(numArray[i]);
  }
  
  var unreversedArray = [], counter = 0;
    
  for (var i = 0; i < reversedArray.length; i++){
    if (counter === 3) {
      unreversedArray.unshift(",");
      counter = 0;
      unreversedArray.unshift(reversedArray[i]);
      counter++;
    } else {
      unreversedArray.unshift(reversedArray[i]);
      counter++;
    }
  }
  return unreversedArray.join("");
}

// Your Own Tests (OPTIONAL)

var testNumber = -5467344444444232;
console.log("The test: " + addCommas(testNumber))

// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

  I did approach the problem a little differently but I think that's because more so because I've done this once before
  rather than because of javascript.  That being said it was pretty easy to find the needed methods within javascript.

What did you learn about iterating over arrays in JavaScript?

  It is different than what I'm used to in Ruby but it's actually not that difficult once you get used to using the for
  loops.  In fact I found their standard for constructing them makes it a little easier.

What was different about solving this problem in JavaScript?

  It was fairly easy to convert the integer into strings or an array.  It's also nice that javascript is not as picky
  about certain situations like Ruby is.
  
What built-in methods did you find to incorporate in your refactored solution?
  
  We used split, join, length, toString, and unshift.  Unshift was probably the most important because it easily
  allowed us work with the number in and out of arrays.
*/
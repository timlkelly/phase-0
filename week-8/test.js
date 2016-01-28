/*
var firstObj = {
  "bob": {pos1: "tony", pos2: "andy"},
  "joe": {pos1: "sally", pos2: "lucy"}
}


var otherObj = {
  pos1: {"lucy": 0, "dfads": 0},
  pos2: {}
};

// console.log(firstObj["one"]);
// console.log(firstObj["two"]["num"]);

// var counter = 0;

// for (index in firstObj){
//   console.log(index);
//   console.log();
//   // console.log(index[counter]);
//   counter += 1;
//   console.log(firstObj[index]["firstName"]);
//   otherObj = firstObj[index].first;
// }

for (index in firstObj){
  var voter = firstObj[index];
  console.log(otherObj);
  for (position in voter){
    var vote = voter[position];
    console.log(otherObj);
    console.log("Pres: " + position);
    console.log(vote);
    
    // otherObj = firstObj.vote += 1;
    otherObj.pos1 = vote;
    console.log(otherObj.pos1);
    if (position === "lucy"){
      if (otherObj.hasOwnProperty(vote)){
        otherObj.voter["pos1"] += 1;
      }else{
        otherObj.pos1[vote] = 1;
    }
    }
  }
}

// console.log(firstObj.hasOwnProperty("bob"));
console.log("other object: " + otherObj["pos1"]["lucy"]);
console.log();

*/

//=============================

//console.log(testing.bob.pres);
// accessing entries
// testing.bob or testing["bob"]
// testing.bob.pres or testing["bob"]["pres"]
// --------------------------------------------------
//iterating first level
/*  TOP LEVEL ITERATION
for (index in testing){
  console.log(index);
}
*/
// SUB LEVEL ITERATION

// for (index in testing){
//   var voter = testing[index];
//   console.log("i" + index);
//   console.log(voter);
//   for (ballot in voter){
//     console.log(index + " voted for:");
//   }
// }

// console.log("--------------------------------");
// console.log(testing.bob.pres);
// console.log(testing["bob"]);
// console.log(testing.bob + " voted for " + testing.bob.pres);
// console.log(testing);
// console.log("--------------------------------");

// for(var voter in testing){
//   if (testing.hasOwnProperty(voter)){
//     console.log(voter);
//     for (var i = 0, j = testing[voter].length; i < j; i++){
//       console.log(testing.voter);
//     }
//   }

// }


var testing = {
  "bob": {pres: "cameron", vice: "mason"},
  "seth": {pres: "sean", vice: "cameron"},
  "maia": {pres: "kristina", vice: "mason"}
}

var voteTally = {
  "pres": {},
  "vice": {}
}

// console.log(voteTally);
// console.log();
// console.log(voteTally["pres"]); // === voteTally.pres
// voteTally.pres = {joe: '1'};
// console.log(voteTally);
// console.log("--------------------------------");

for (var voter in testing){
  for (var ballot in testing[voter]){
    console.log(voter + " voted for " + testing[voter][ballot] + " for " + ballot);
    // voteTally[ballot] = testing[voter][ballot];
    voteTally[ballot] = testing.voter[ballot];
  }
}

console.log(voteTally);

// for (var i = 0; i < testing.length; i++){
//   var voter = testing[i];
//   for (var b = 0; b < voter.length; b++){
//     console.log(b);
//   }
// }

// for (var name in votes){
//   for (var title in voteCount){
//     if (voteCount[title][votes[name][title]] === undefined){
//       voteCount[title][votes[name][title]] = 1
//     } else {
//       voteCount[title][votes[name][title]] += 1;
//     }
//   }  
// }
var votes = {
  "bob": {pres: "cameron", vice: "mason"},
  "seth": {pres: "sean", vice: "cameron"},
  "maia": {pres: "kristina", vice: "mason"}
}

var voteCount = {
  "pres": {},
  "vice": {}
}

console.log(voteCount);

for (var name in votes){
  for (var title in voteCount){
    if (voteCount[title][votes[name][title]] === undefined){
      voteCount[title][votes[name][title]] = 1
    } else {
      voteCount[title][votes[name][title]] += 1;
    }
  }  
}
console.log(voteCount);
function sumArray(array){
  for(var index = 0, length = array.length, sum = 0; index < length; sum += array[index++]);
    return sum;
}

function mean(array){
  var total_sum = sumArray(array);
  var average = total_sum / array.length;
  return average;
}

function median(mainArray) {
  var sortedArray = mainArray.sort(function(a,b){return a-b});
  var arrayLength = mainArray.length;
  if (arrayLength % 2 === 0){
    var evenNumArray = [];
    var midIndex1 = Math.ceil(((arrayLength - 1) / 2));
    var midIndex2 = Math.floor(((arrayLength - 1) / 2));
    evenNumArray.push(sortedArray[midIndex1]);
    evenNumArray.push(sortedArray[midIndex2]);
    var evenResult = mean(evenNumArray);
    return evenResult;
  }else{
    var oddNumIndex = ((arrayLength - 1) / 2);
    return sortedArray[oddNumIndex];
  }
}
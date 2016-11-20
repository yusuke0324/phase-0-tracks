// function getLongest(array){
//   array.sort(function(a,b){
//     if(a.length > b.length) return -1;
//     if(a.length < b.length) return 1;
//     return 0;
//   })
//   return array[0];
// }

// pseudocode for quickSortLength
// quickSortLength(array, left, right)
// pick one elem as a pivot, (left elem)
//i = left + 1
//j = right
// loop while i < j
  // if array[i] < pivot
  //   i ++
  // if array[j] > pivot
  //   j --
  // swap(array[i],array[j])
//swap(array[left],array[i])
//call self (array, left, i-1)
//call self (array, i + 1,right)

function quickSortLength(array, left, right){
  var pivot = array[left]
  var i = left + 1;
  var j = right;

  while(i < j){
    //find an elem which is bigger than or equal to pivot from left
    if(array[i].length <= pivot.length && i < right){
      i++;
    }else{
      //find an elem which is smaller than pivot from right
      if(array[j].length > pivot.length && left < j){
        j--;
      }else if(i < j){
        //swap the elements
        var tmp = array[i];
        array[i] = array[j];
        array[j] = tmp;
        i++;
        j--;
      }
    }
  }
  if(array[left].length > array[j].length){
    array[left] = array[j];
    array[j] = pivot;
//call self (array, left, i -1)
    if(left < j -1){
      quickSortLength(array,left, j-1);
    }
    if(j+1 < right){
      quickSortLength(array,j+1, right);
    }
  }else{
    array[left] = array[j-1];
    array[j-1] = pivot;
    if(left < j -2){
      quickSortLength(array,left, j-2);
    }
    if(j < right){
      quickSortLength(array,j, right);
    }
  }
    return array;
}


function getLongestElem(array){
  // ascending sort array
  var sortedArray = quickSortLength(array, 0, array.length - 1);
  var longestElem = sortedArray[sortedArray.length -1];

  return longestElem;
}

//pseudocode for haveSamePair function
//two parameters; obj1, obj2
//sort arrays of keys; keysObj1 and KeyObj2 using quick sort
//for i = 0 to keysObj1.length
//  search for the key in keysObj2 using binarySearch
//  if find the same key
//    if obj1[key] = obj2[key]
//      return true
//  next
//end
//return false

function haveSamePair(obj1, obj2){
  var obj1Keys = Object.keys(obj1);
  var obj2Keys = Object.keys(obj2);
  var sortedObj1Keys = quickSort(obj1Keys, 0, obj1Keys.length);
  var sortedObj2Keys = quickSort(obj2Keys, 0, obj2Keys.length);
  for (var key in obj1){
    if (binarySearch(sortedObj2Keys, key)){
      //find the same key
      if(obj1[key] == obj2[key]){
        return true;
      }
    }
  }
  return false;
}

var test1 = {a: 1, b: 5, k: 4};
var test2 = {f: 1, a: 1, d: 4};
console.log(haveSamePair(test1,test2));

//pseudocode for binarySearch (return true/false)
//parameters: sortedArray,target
//head = 0,
//tail = sortedArray.length
// while head <= tail
//middle = (tail - head )/2 (ex 2.5 -> 3)
//if target < array[middle]
    // head = head
    // tail = middle -1
//else if target > array[middle]
    //  head = middle + 1
    //  tail = tail
//else (target == array[middle])
//  return target
//end loop
//return false

function binarySearch(sortedArray, target){
  var head = 0;
  var tail = sortedArray.length-1;
  while(head <= tail){
    var middle = Math.ceil((tail + head)/2);
    // console.log("head:" + head);
    // console.log("tail:" + tail);
    // console.log(middle);
    if(target < sortedArray[middle]){
      tail = middle - 1;
    }else if(target > sortedArray[middle]){
      head = middle + 1;
    }else{
      return true;
    }
  }
  return false;
}

// arrayTest = [1,5,7,9,13,15,16,17,20,25,27,28];
// console.log(binarySearch(arrayTest, 18));

function quickSort(array, left, right){
  var pivot = array[left]
  var i = left + 1;
  var j = right;

  while(i < j){
    //find an elem which is bigger than or equal to pivot from left
    if(array[i] <= pivot && i < right){
      i++;
    }else{
      //find an elem which is smaller than pivot from right
      if(array[j] > pivot && left < j){
        j--;
      }else if(i < j){
        //swap the elements
        var tmp = array[i];
        array[i] = array[j];
        array[j] = tmp;
        i++;
        j--;
      }
    }
  }
  if(array[left] > array[j]){
    array[left] = array[j];
    array[j] = pivot;
//call self (array, left, i -1)
    if(left < j -1){
      quickSort(array,left, j-1);
    }
    if(j+1 < right){
      quickSort(array,j+1, right);
    }
  }else{
    array[left] = array[j-1];
    array[j-1] = pivot;
    if(left < j -2){
      quickSort(array,left, j-2);
    }
    if(j < right){
      quickSort(array,j, right);
    }
  }
    return array;
}

function randomNumber(min, max){
  return Math.floor(Math.random() * (max + 1 -min)) + min;
}

function generateRandomWord(length){
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  var randomWord = "";
  for(var i = 0; i < length; i++){
    randomWord += alphabet[randomNumber(0,25)];
  }
  return randomWord;
}

function testArrayFactory(num){
  var testArray =[];
  for(var i = 0; i < num; i++){
    testArray.push(generateRandomWord(randomNumber(1, 10)));
  }
  return testArray;
}

for(var i = 0; i <10; i++){
  var testArray = testArrayFactory(10);
console.log("testArray:" + testArray);
console.log("longest word:" + getLongestElem(testArray));
}
// console.log(getLongest(["long phrase","longest phrase","longer phrase"]))

// array = ["appple", "I", "have", "pen", "tea", "applepen", "a"];
// console.log(getLongestElem(array));

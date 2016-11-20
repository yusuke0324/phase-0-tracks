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

// console.log(getLongest(["long phrase","longest phrase","longer phrase"]))

array = ["appple", "I", "have", "pen", "tea", "applepen", "a"];
console.log(getLongestElem(array));

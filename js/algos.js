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
  console.log("array:" + array);
  console.log("pivot:" + pivot);
  console.log("left:" + left);
  console.log("right:" + right);
  while(i < j){
    //find an elem which is bigger than or equal to pivot from left
    if(array[i] <= pivot && i < right){
      i++;
    }else{
      //find an elem which is smaller than pivot from right
      if(array[j] > pivot && left < j){
        j--;
      }else if(i < j){
        console.log("array["+i+"]:" + array[i]);
        console.log("array["+j+"]:" + array[j]);
        //swap the elements
        var tmp = array[i];
        array[i] = array[j];
        array[j] = tmp;
        i++;
        j--;
      }
    }
  }
  console.log("i = " + i);
  console.log("j = " + j);
  if(array[left] > array[j]){
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

// console.log(getLongest(["long phrase","longest phrase","longer phrase"]))

console.log(quickSortLength([20,90,2,41,33,42,53,225,5,3,32,4,5,2,323,3,44,5],0,17));
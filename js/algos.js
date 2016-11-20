function getLongest(array){
  array.sort(function(a,b){
    if(a.length > b.length) return -1;
    if(a.length < b.length) return 1;
    return 0;
  })
  return array[0];
}

console.log(getLongest(["long phrase","longest phrase","longer phrase"]))
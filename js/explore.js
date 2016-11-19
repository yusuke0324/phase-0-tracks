// define reverse with string parameter
// define a return string
// make a loop from end of charctor of the string
// put the charctor to the return string for each
// return the string

function reverse(string){
  var reversed = '';
  for(var i = string.length; i >0; i--){
    reversed += string[i-1];
    console.log(reversed);
  }
  return reversed
}

console.log(reverse("hello"))
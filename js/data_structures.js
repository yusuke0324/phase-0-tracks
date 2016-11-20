var colors = ["blue", "red", "pink", "green"];

var names = ["Ed", "Fred", "Frank", "Matt"];

colors.push("purple");
names.push("Yusuke");

// console.log(colors);
// console.log(names);

var horses = {};

for (var i = 0; i < names.length; i++){
  horses[names[i]] = colors[i];
}

console.log(horses);

function Car(model, maxSpeed, color){
  console.log("Our new car!!:", this);
  this.model = model;
  this.maxSpeed = maxSpeed;
  this.color = color;

  this.drive = function(location){
    console.log("my car(" +model + ") is driving to " + location + " at " + maxSpeed +"mph");
  }
}

var sampleCar = new Car("Ford", 100, "black");
sampleCar.drive("Japan");
var sampleCar2 = new Car("BMW", 100, "white");
sampleCar2.drive("Switzerland");
var sampleCar3 = new Car("Ferrari", 100000, "red");
sampleCar3.drive("U.S");
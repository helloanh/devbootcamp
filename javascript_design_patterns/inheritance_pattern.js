// JS don't have classes, we have objects
// objects inherite properties from to other objects
// this is one way we can use to reuse code

// there's only one way in JS to perform trye inheritance, and that is by chaining prototypes


// Our constructor pattern:

function Beverage(name, temperature) {
  this.name = name;
  this.temperature = temperature;
}

Beverage.prototype.drink = function() {
  console.log("I'm drinking " + this.name);
}


// Now let's make Coffee object inherit form Beverage
// what parameter the constructor function to have
// we do need the type of coffee: bold, light, acid, etc.

function Coffee(type) {
  this.type = type;
}

// this is how we set up inheritance
// we use Object.create to take the Beverage object

Coffe.prototype = Object.create(Beverage.prototype)

Coffee.prototype.sip = function() {
  console.log("Spiing some awesome " + this.type + " " + this.name)[]
}


// Now we go back and call Beverage object inside Coffee

function Coffee(type) {
  Beverage.call(this, "coffee", "hot");
  this.type = type
}



var water =  new Beverage("water", "cold");
var coffee = new Coffee("bold");
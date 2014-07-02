/* Write your code for the plain-old-js-objects-spec here */
FRUIT_BEARING_AGE = 10;
MAX_AGE = 100;

var createTree = function() {
  return new Tree()
}

function Tree() {
  this.age = 0,
  this.height = 0,
  this.orangeCount = 0,
  this.isAlive = true,

  this.grow = function() {
    this.age++;
    this.height+=10;
    if (this.age >= FRUIT_BEARING_AGE) {
      this.orangeCount = Math.floor(Math.random() *10 + 1);
    }
    if (this.age > MAX_AGE) {
      this.isAlive = false;
    }

    this.dropOrange = function() {
      return {x:0}
    }

    // this.pickOrange = function() {
    //   return { diameter: 0}
    // }
  }
}

var pickOrange = function() {
  return new Orange()
}

function Orange() {
  this.diameter = 1
}




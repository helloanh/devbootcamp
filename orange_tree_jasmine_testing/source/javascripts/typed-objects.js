// Write your Orange Tree code here - you may use constructor functions

FRUIT_BEARING_AGE = 10;
MAX_AGE = 100;

var createTree = function() {
  return new Tree()
}

var pickOrange = function() {
  return new Orange()
}

function Orange() {
  this.diameter = 1
}

function Tree() {

  this.age = 0,
  this.height = 0,
  this.orangeCount = 0,
  this.isAlive = true
}

Tree.prototype.grow = function() {
  this.age++;
  this.height+=10;
    if (this.age >= FRUIT_BEARING_AGE) {
      this.orangeCount = this.orangeCount + Math.floor(Math.random() *10 + 1);
    }
    if (this.age > MAX_AGE) {
      this.isAlive = false;
    }
}

Tree.prototype.dropOrange = function() {
  return { message: "dropping an orange"}
}
// The Decorator Pattern
// the DP is a wrapper, use to extend the functionality of an object while maintaining that object's interface

function Coffee() {

}

Coffee.prototype.cost = function() {
  return 5;
}

Coffee.small =  function(coffeeObj) {
  var cost = coffeeObj.cost();

  //make a small coffee a dollar less than regular cost
  coffeeObj.cost = function () {
    return cost - 1;
  };
};


// making the medium the default
Coffee.medium = function(coffeeObj) {};

Coffee.large = function(coffeeObj) {
  var cost = coffeeObj.cost();

  //make a large coffee a dollar more than regular cost
  coffeeObj.cost = function () {
    return cost + 1;
  };
};


Coffee.sugar = function (coffeeObj) {
  var cost = coffeeObj.cost();
  coffeeObj.cost = function() {
    return cost + 0.15;
  };
};

Coffee.creamer = function(coffeeObj) {
  var cost = coffeeObj.cost();
  coffeeObj.cost = function() {
    return cost + 0.15;
  };
};

Coffee.foam= function(coffeeObj) {
  var cost = coffeeObj.cost();
  coffeeObj.cost = function() {
    return cost + 0.15;
  }
}

Coffee.chocolate = function(coffeeObj) {
  var cost = coffeeObj.cost();
  coffeeObj.cost = function() {
    return cost + 0.15;
  };
};

Coffee.mocha = function(coffeeObj) {
  Coffee.milk(coffeeObj);
  Coffee.foam(coffeeObj);
  Coffee.chocolate(coffeeObj);

  var cost = coffeeObj.cost();

  coffeeObj.cost = function() {
    return cost;
  };
};

// terminal
var coffee = new Coffee();
var mocha = new Coffee();

Coffee.large(coffee);
Coffee.cost();


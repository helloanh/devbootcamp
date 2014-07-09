// encapsulate an action within an object
// seeks to use the object as a verb
// gives us the ability to separate the issuing of the command from the execution of the command


function Calculator() {
  this._currentValue = 0;
}

Calculator.prototype = {
  add: function(value) {
    this._currentValue += value;
  },

  subtract: function(value) {
    this._currentValue -= value;
  },

  getCurrentValue: function() {
    return this._currentValue;
  }
};

// but this data type is brittle
// we only have only methods
// we need to add more methods later
//

function Calculator() {
  this._currentValue = 0;
}

Calculator.prototype = {
 execute: function(command) {   //add, subtract, etc.
    this._currentValue = command.execute(this._currentValue);
 },

 getCurrentValue: function() {
    return this._currentValue;
  }
};

function Command(fn, value) {
  this.execute = fn;
  this.value = value;
}

function AddCommand(value) {
  Command.call(this, function(value) {
    return value + this.value;
  }, value);
}

function SubCommand(value) {
  Command.call(this, function(value) {
    return value - this.value;
  }, value);
}

var calc = new Calculator();
calc.execute(new AddCommand((19));

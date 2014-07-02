// Constructor Design Pattern

// the CDP is also a way to create our own custom data type
//
// Person must be capitalize
// "this" keyword to refer to the object we are creating

fucntion Person(firstName, lastName) {
  this.firstName = firstName
  this.lastName = lastName
  this.sayName = function() {
    return "My name is " + this.firstName + " " + this.lastName;
  }
}

var johnDoe = new Person("John", "Doe");
var janeDoe = new Person("Jane", "Doe");

var isPerson = johnDoe instanceof Person; //true

// comparing the actual function object,
// not the result of executing those methods
// this will be false because johnDoe.sayName is a completely different object than janeDoe.sayName
// this is problematic because it increases memory usage,we have to create extra function objects and store them in memory
// that's not the only issue, we also run into inheritance issue

var isSame = johnDoe.sayName === janeDoe.sayName; //false

//instead we should take out our methods and define them in our prototype

fucntion Person(firstName, lastName) {
  this.firstName = firstName
  this.lastName = lastName
}

Person.prototype.sayName = function() {
    return "My name is " + this.firstName + " " + this.lastName;
}

//now different objects joeDoe and janeDoe have access to the same sayName method

var isSame = johnDoe.sayName === janeDoe.sayName; //true

//important for inheritance later on
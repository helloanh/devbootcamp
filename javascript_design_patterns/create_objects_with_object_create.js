// Introduced in ECMAScript 5

var foo = {};

// gain more power, create objects that are based on other objects
var bar = Object.create(Object.prototype);


var johnDoe = {
  firstName: "John",
  lastName: "Doe",
  sayName: function() {
    return "My name is " + this.firstName + " " + this.lastName;
  }
}

// let's take johnDoe method to create janeDoe method
// we can use Object.create()

//Object.create() make a prototype method chain

var janeDoe = Object.create(johnDoe, {
  firstName: {value: "Jane"},
  greet: {
    value: function(person) {
      return "Hello, " + person.firstName;
    }
  }
});


var jimSmith = Object.create(janeDoe, {
  firstName: {value: "Jim"},
  lastName: {value: "Smith"}
});

console.log(johnDoe.sayName());
console.log(janeDoe.sayName() + " " + janeDoe.greet(johnDoe));

console.log(jimSmith.sayName() + " " + jimSmith.greet(janeDoe));

console.log(janeDoe.__proto__ === johnDoe);
console.log(jimSmith.__proto__ === janeDoe);



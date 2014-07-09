// traditional inheritance isn't the cleanest code,
// for performance issue, we don't want a long prototype chain
// so let's use mixins

// suppose we have a Person and Dog constructor function

function Person(name) {
  this.name = name;
}

function Dog(name) {
  this.name = name;
}


//now we make two objects, speaker and mover, each with its own method


var speaker = {
  speak: function() {
    return this.name + " is speaking.";
  }
};

var mover = {
  walk: function() {
    return this.name + "is walking.";
  },

  run: function() {
    return this.name + "is running.";
  }
};

// the coneept of a mixin is to take an object an mixin the functionality of another object
//
// for example, we can use the jQuery .extend()
 $.extend(Person.prototype, speaker, mover);
 $.extend(Dog.prototype, speaker, mover);


 var john = new Person("John Doe");
 var fido = new Dog("Fido");

// then we can call methods from speaker and mover object on both john and fido object
john.speak();
john.run();
john.walk();

fido.speak();
fido,run();
fido.walk();

// now let's add another object

var arithmetic = {
  add: function() {
    return this.name + " is adding numbers together.";
  },
  multiply: function() {
    return this.name + " is multiplying numbers together.";
  }
};

// then  add object arithmetic to extend
//
 $.extend(Person.prototype, speaker, mover, arithmetic);

 $.extend(Dog.prototype, speaker, mover);

// now we can use
 john.add();
 john.multiply();

 // but not fido
 fido.add();  //error


 // we need to write the extend function

 function extend(target) {
  if (!arugments[1]) {
    return;
  }

  for (var i = 1, j = arguments.length;i < j; i++ ) {
    var source = arguments[i];
    for (var prop in source) {
      if (!target(prop) && source.hasOwnProperty(prop)) {
        target[prop] = source[prop];
      }
    }
  }
 }
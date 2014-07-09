// object literal is a pair of {}

// There are 4 ways to create property for objects:

// create an object with object literal notation
var obj = {};

// 1. assign firstName property using the dot notation
obj.firstName = "Holden";

// 2. using bracket notation
obj["lastName"] = "Caufield";

//retrieving values
var firsNname = obj["firstName"];
var lastName = obj.lastName;

//notice that square bracket gives us more flexibility: ie we canuse ["last Name"], or reserved word (not best practiced)


// 3. Using ECMAScript defineProperty()
Object.defineProperty(obj, "country", {
  value: "USA"
});

// 4. defineProperties for multiple objects
Object.defineProperties(obj, {
  twitter : {
    value: "anhtheandroid"
  },

  email: {
    value: "akh@example.com"
  }
});








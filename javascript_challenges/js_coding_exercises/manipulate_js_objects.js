/*

In this challenge you will work with the following JavaScript object that has been assigned to the variable terah.

There is a section below where you will write your code.
Do not alter this object here.

*/

var terah = {
  name: "Terah",
  age: 32,
  height: 66,
  weight: 130,
  hairColor: "brown",
  eyeColor: "brown"
}

/*


Below you will find driver code. Run the code in this file either
from the command line using Node.js or by pasting the code of this
entire file into your browser console.  All tests will log 'true'
in the console when they pass--false, otherwise.

Follow the steps below to make the tests pass and complete the challenge.
The order of the steps corresponds to the order of the tests.  After completing
each step, run your code to be certain that the next test has passed.

When all of the tests have passed, your final terah object will be logged to the console.


1. Define a variable adam and use object literal notation to assign this variable
   the value of a JavaScript Object object with no properties.

2. Give adam a name property with the value "Adam".

3. Add a spouse property to terah and assign it the value of adam.

4. Change the value of the terah weight property to 125.

5. Remove the eyeColor property from terah.

6. Add a spouse property to adam and assign it the value of terah.

7. Add a children property to terah and and use object literal notation to assign
   this variable the value of a JavaScript Object object with no properties

8. Add a carson property to the value of the terah children property and assign it
  the value of an object with the property name with a value of "Carson".

9. Add a carter property to the value of the terah children property and assign it
   the value of an object with the property name with a value of "Carter".

10. Add a colton property to the value of the terah children property and assign it
    the value of an object with the property name with a value of "Colton".

11. Add a children property to adam and assign it the value of terah children.

*/


// __________________________________________
// Write your code below.

var adam = {};
adam.name = "Adam";

terah.spouse = adam;
terah.weight = 125;
terah.eyeColor = undefined;
adam.spouse = terah;

terah.children = {};
terah.children.carson = {name: "Carson"} ;
terah.children.carter = {name: "Carter"} ;
terah.children.colton = {name: "Colton"} ;
adam.children = {};
adam.children = terah.children;

// __________________________________________
// Driver Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (adam instanceof Object),
  "The value of adam should be an Object.",
  "1. "
)

assert(
  (adam.name === "Adam"),
  "The value of the adam name property should be 'Adam'.",
  "2. "
)

assert(
  terah.spouse === adam,
  "terah should have a spouse property with the value of the variable adam.",
  "3. "
)

assert(
  terah.weight === 125,
  "The terah weight property should be 125.",
  "4. "
)

assert(
  terah.eyeColor === undefined,
  "The terah eyeColor property should be removed.",
  "5. "
)

assert(
  terah.spouse.spouse === terah,
  "The terah spouse property's value spouse property should be terah.",
  "6. "
)

assert(
  (terah.children instanceof Object),
  "The value of the terah children property should be an Object.",
  "7. "
)

assert(
  terah.children.carson.name === "Carson",
  "The terah children property should have a carson property with its own property name with a value of 'Carson'.",
  "8. "
)

assert(
  terah.children.carter.name === "Carter",
  "The terah children property should have a carter property with its own property name with a value of 'Carter'.",
  "9. "
)

assert(
  terah.children.colton.name === "Colton",
  "The terah children property should have a colton property with its own property name with a value of 'Colton'.",
  "10. "
)

assert(
  adam.children === terah.children,
  "The value of the adam children property should be the value of the terah children property",
  "11. "
)

console.log("\nHere is your final terah object:")
console.log(terah)
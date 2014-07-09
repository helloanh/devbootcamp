# Orange Trees

## Learning Competencies

* Use Testing to TDD JavaScript code with Jasmine.
* Use basic JavaScript - functions, control structures, scope.
* Write OO JavaScript

## Summary

Remember our old friend **Orange Trees** from Ruby? Let's revisit it in JavaScript.

Here are some features:
* A tree can age.
* For each year the tree ages up to it's fruit bearing age, it gets taller.
* After a tree reaches fruit bearing age, it can grow fruit.
* A tree grows a random amount of oranges each year it ages (after reaching fruit bearing age)
* An orange has a random diameter.
* You can pick all the fruit that grows each year.
* Any un-picked fruit dies when the tree ages again.
* A tree dies after it ages for it's max age years and can no longer bear fruit.

## Releases

### Release 0 : Working with Jasmine

We've written a lot of tests for you in Jasmine, your job is to write the code to
make these tests pass.  Start your test server by running `open SpecRunner.html`.
You should see your first failing test.  Write code in `javascripts/plain-old-js-objects.js`
to make this test pass.  Then uncomment the next test (change the `xit` to `it`) and keep going.

### Release 1 : Plain Old JavaScript Objects (Object Literals)

Here we'll be building objects with functions. In this release we will create an
orange tree, age the tree, grow oranges on the tree, and pick fruit off the
tree.  We will model all of this using JavaScript functions and
JavaScript objects.

* One by one, make the
  [plain-old-js-objects-spec](./spec/javascripts/plain_old_js_objects_spec.js)
  pass without using prototypes or constructor functions. Use the
  [plain-old-js-objects](./javascripts/plain-old-js-objects.js) file.
* Refactor your JavaScript source files!
* Refactor your spec files!

### Release 2 : JavaScript Constructor Function Objects

In this release we will AGAIN create an orange tree, age the tree, grow oranges
on the tree, and pick fruit off the tree.  We will model all of this using
JavaScript constructor functions and Prototypes.

* One by one, copy the plain old js objects spec into the typed objects spec.
  However, change them to use the `new OrangeTree` and `prototype` syntax as you
  do. use the `javascripts/typed-js-objects.js` file.
* Refactor your JavaScript source files!
* Refactor your spec files!


### Release 3 : The View

Now let's add some interaction with the DOM. Write your DOM interaction code in
`view.js`. Use either the objects you built in release 1 or 2.

* Write code that allows you to `plant` a tree by clicking a button. It should
  be visible on the screen somehow. (There is a tree image in the images file you may use)
* Write code that allows you to `age` a tree by clicking a button.  If you age the tree enough there should be oranges that appear on the tree (use the orange image)
* Write code that allows you to `pick` a tree off an orange by clicking a
  button.

Testing DOM-interactive JavaScript with Jasmine requires a lot of setup, since
SpecRunner.html has no way to access the HTML in orange.html. You have to create mock
HTML objects in your testing suite for any of your view.js tests to run.

We've already given you one pending test example in `view_spec.js`, although it may
not exactly match the architecture of your program. Get it working, and then continue to
test all your functions that create, read, update, or delete anything from the DOM.

### Release 4

* Have some fun.  Can you add a pear tree? Can you do it TDD?
* Can you pick all the fruit that grows each year and put it in a basket?
* Can you know the number of fruit in the basket and the average diameter of that fruit at any time?

## Resources

1. [tryJasmine.com](http://tryjasmine.com)
1. [MDN JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide)
1. [Jasmine Documentation](http://pivotal.github.io/jasmine/)
1. [Jasmine Cheat Sheet](http://www.cheatography.com/citguy/cheat-sheets/jasmine-js-testing/)
1. [Another Jasmine Tutorial](http://evanhahn.com/how-do-i-jasmine/)

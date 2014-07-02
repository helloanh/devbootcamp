window.onload = {
  controller = new controller;

}


App = {}
App.Controller = function(view) {
  this.view = view;
}

App.Controller.prototype = {
  makeATree: function() {
    tree = createTree();
    document.getElementById("orange-tree-template").style.display="block";
  },

  ageATree: function() {
    tree.grow();
    fruitCount.textContent = "Fruits: " + tree.orangeCount;
    currentAge = age_counter;
    currentAge.textContent = "Age: " + tree.age;
  },

  pickAFruit: function() {
    fruitCount.textContent = "Fruits:" + (tree.orangeCount -=1);
  }
}


selectors = {
    click_button_age: document.getElementById("click_button_age"),
    plant: document.querySelector(".plant"),
    fruitCount: document.querySelector(".fruit-count"),
    age_counter: document.querySelector(".age"),
    click_pick_button: document.querySelector(".pick")
  }

App.View = function(selectors) {
  this.selectors = selectors;
}

targets = {
  age : click_button_age.addEventListener('click', age, false),
  plant : plant.addEventListener('click', make, false),
  pick : click_pick_button.addEventListener('click', pick, false)
}
App.Binder = function(targets, controller) {
  this.targets = targets;
  this.controller = controller;
}

App.Binder.prototype = {
  bindThings: function() {

  }

  bindMoreThings: function(){

  }

  bindAllThings: function() {
  }

  bind: function() {
    this.bin
  }
}
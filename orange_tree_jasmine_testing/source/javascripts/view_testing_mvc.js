/* Write your JS to modify the view here */
window.onload = function(){
  // debugger
  // controller = new Controller();
  // controller.makeATree()
  // view = new View(makeATree, ageATree, pickAFruit);
  binder=new Binder();
  binder.bind();
}

Controller = function() {
}

View = function() {
  // click_button_age = document.getElementById("click_button_age");
  // plant = document.querySelector(".plant");
  // fruitCount = document.querySelector(".fruit-count");
  // age_counter = document.querySelector(".age");
  // click_pick_button = document.querySelector(".pick");

  all_selectors = {
    click_button_age: document.getElementById("click_button_age"),
    plant: document.querySelector(".plant"),
    fruitCount: document.querySelector(".fruit-count"),
    age_counter: document.querySelector(".age"),
    click_pick_button: document.querySelector(".pick")
  }
}

Binder=function(age,make,pick){
  click_button_age.addEventListener('click', age, false);
  plant.addEventListener('click', make, false);
  click_pick_button.addEventListener('click', pick, false);
}


// Model = function() {

// }

Controller.prototype.makeATree = function() {
  tree = createTree();
  document.getElementById("orange-tree-template").style.display="block";

}

Controller.prototype.ageATree = function() {
  tree.grow();
  fruitCount.textContent = "Fruits: " + tree.orangeCount;
  currentAge = age_counter;
  currentAge.textContent = "Age: " + tree.age;
}

Controller.prototype.pickAFruit = function() {
  fruitCount.textContent = "Fruits:" + (tree.orangeCount -=1 );
}


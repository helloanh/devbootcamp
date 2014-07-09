/* Write your JS to modify the view here */
window.onload = function(){
  //button_age = document.querySelector(".age");
  click_button_age = document.getElementById("click_button_age");
  click_button_age.addEventListener('click', ageATree, false);

  plant = document.querySelector(".plant");
  fruitCount = document.querySelector(".fruit-count");
  age_counter = document.querySelector(".age");
  click_pick_button = document.querySelector(".pick");

  plant.addEventListener('click', makeATree, false);
    //alert("You just plant a new tree");

  click_pick_button.addEventListener('click', pickAFruit, false);
}


makeATree = function() {
  tree = createTree();
  document.getElementById("orange-tree-template").style.display="block";

}

ageATree = function() {
  tree.grow();
  fruitCount.textContent = "Fruits: " + tree.orangeCount;
  currentAge = age_counter;
  currentAge.textContent = "Age: " + tree.age;
}

pickAFruit = function() {
  fruitCount.textContent = "Fruits:" + (tree.orangeCount -=1 );
}
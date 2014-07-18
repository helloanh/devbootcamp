/* I want to refactor my original area code with the Command Pattern for several reasons:

  - my code smells: it was too coupled, there was no seperation of concerns
  - the interface is limited for future features, for example, we might need to add functionalities such as: a function to calculate the perimeter, another to calc the cost of the materials based on the area, etc.

  - the command pattern is great to separate the issue of the command from the execution

  Sources:
  Bk principles of OOP JS by Nicolas Zakas
  Tut+ Video JS Design Patterns

  Notes:
  some changes to the input format
   INPUT is "0 -10 7 -10 10 -8 0 -10"
  string input without commas and bracket is more user-friendly
*/


function PaddockCalculator(str_coords) {
  // change string into an array of number coords, ie [0, -10, 7, -10, 10, -8, 0, -10]
  this.coords = str_coords.split(" ").map( function(x) { return parseInt(x); } );
  this.areaPaddock = 0;
}

PaddockCalculator.prototype = {
  execute: function(command){   //findArea, findPerimeter, addMultiplePaddockAreas, etc.
    this._currentValue = command.execute(this._currentValue);
  },

  getArea: function() {
    return this.areaPaddock + " acres";
  }
};

function Command(funct, coords) {
  this.execute = funct;
  this.coords = coords;
}

function DisplayErrorsCommand(coords) {
  Command.call(this, function(coords) {
    var coordsSize = this.coords.length;

    console.log(coordsSize);
    if (coordsSize === 0) {
    //check for empty array
    return console.log("Invalid input.  Coordinates cannot be empty.");
    }

    if (coordsSize < 3  || coordsSize > 7) {
    //check input outside of 3-6 range
    return console.log("Input out of range.");
    }

    for (var i = 0; i < coordsSize; i++ ) {
      for (var j =0; j < coords[i].length; j++) {
        //test for inner coordinates -10 to 10 range
        if (coords[i][j] < -10 || coords[i][j] > 10) {
          return console.log("Coordinates outside of -10 to 10 range.");
        }
      }
    }
  }, coords);
}

function AreaCommand(coords) {
  Command.call(this, function(coords) {

  for (var i = 0; i < coords.length - 2; i +=2) {
    var total = 0;
    total += coords[i] * coords[i+3] - coords[i+2] * coords[i+1];
  }

  area = (total/2).toPrecision(2);
  console.log("what is total: " + total);
  return Number(area).toString() + " acres";
    return console.log("inside AreaCommand function");
  }, coords);
}


var calc = new PaddockCalculator("0 -10 7 -10 10 -8 0 -10");
calc.execute(new DisplayErrorsCommand());
calc.execute(new AreaCommand());

var calc2 = new PaddockCalculator([ [4,3],[5,2],[5,1],[4,0],[3,0],[2,1],[2,2],[3,3] ] );
calc2.execute(new DisplayErrorsCommand());


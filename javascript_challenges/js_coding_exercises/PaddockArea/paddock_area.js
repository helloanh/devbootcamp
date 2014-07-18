/*
  Prompt: Calculate the area of irregularly shaped paddocks (polygons) using JS.

  INPUT: a nested array of 3-6 coordinates represented as [x,y]
  OUTPUT: area calculated to 2 significant figures

  Notes/Pseudocode:
    There are several ways to approach this problem.
    Due to time constants, finding the determinant is the most straightforward method,
    so this is what I am going to use.

    1. loop the input and check for error cases:
      a. array length < 3 or array length > 6
      b. array is not empty
      c. numbers within -10 and 10 range

    2. loop to each inner array, and multiply x and y in the formula below:
          sum_x_to_y = (X0 *Y1) + (X1* Y2)...X(n-1)* Yn
          sum_y_to_x = (Y0 * X1) + (Y1-X2)...Y(n-1)* Xn

          ex:  (0, -10) (7,-10) (0,-8) (0,-10)
            | x  |  y |
            | 0  |-10 |
            | 7  |-10 |
            | 0  |-8  |
            | 0  | -10|

            sum_x_to_y =  (0 * -10) + (7 * -8) + ( 0 *-10) = -56
            sum_y_to_x = (-10 * 7) + (-10 * 0) + (-8 * 0) = -70

    3. area = (sum_y_to_x - sum_x_to_y) / (2.00)
            area = -70 -(-56) = 57/2 = 7

    4. return area.toPrecision(2) to have one sig fig

  Assumptions:
    - the input is a nested array of x,y coords, and the values are in acres
    (not yards, meters, etc.)

    - input might possibly be a string of "(0, -10) (7,-10) (0,-8) (0,-10)", which requires some regex, but for the sake of the problem, I will go with nested array

      ex: so (0, -10) (7,-10) (0,-8) (0,-10) is represented as
          [[0,-10], [7,-10], [0, -8], [0, -10]]

  Sources:
    http://www.wikihow.com/Calculate-the-Area-of-a-Polygon
    http://mathworld.wolfram.com/PolygonArea.html
    http://www.mathopenref.com/coordpolygonareacalc.html
    stackoverflow: array flatten, javascript nested loops, irregular polygon

  Last Words:

    There is definitely some room to refactor since the
    inner for loop take our complexity of the algorithm to O(n*n).

    I would still stick to the array data type but change
    the nested array input structure to reduce back to O(n).

    The nested array input was unnecessary, and half way through the code,
    the stackoverflow community suggested a flatten array.

    This is just spaghetti programming, which leaves room for future refactoring.
    If I were to do this again, I would try out some OOP design patterns.

 */

function PaddockArea(array_coords) {
  this.array_coords = array_coords;
  var arr_size = array_coords.length;
  var total = 0;
  var area = 0;

  if (arr_size === 0) {
    //check for empty array
    return console.log("Invalid input.  Coordinates cannot be empty.");
  }

  if (arr_size < 3  || arr_size > 7) {
    //check input outside of 3-6 range
    return console.log("Input out of range.");
  }

  for (var i = 0; i < arr_size; i++ ) {
    for (var j =0; j < array_coords[i].length; j++) {
      //test for inner coordinates -10 to 10 range
      if (array_coords[i][j] < -10 || array_coords[i][j] > 10) {
        return console.log("Coordinates outside of -10 to 10 range.");
      }
    }
  }

  var flat_arr = [];
  for (var k = 0; k < arr_size; ++k) {
    flat_arr = flat_arr.concat(array_coords[k]);
    // error for coords without a pair
    if (flat_arr.length % 2) {
      return console.log ("Invalid input.  Coordinates must have a pair.");
    }
  }

  // finding the determinate, based on matrix formula
  for (var i = 0; i < flat_arr.length - 2; i+=2) {
    total += flat_arr[i] * flat_arr[i+3] - flat_arr[i+2] * flat_arr[i+1];
  }

  area = (total/2).toPrecision(2);
  console.log("what is total: " + total);
  return Number(area).toString() + " acres";
}


// --------------- TEST CASES -------------

// These test cases should fail
PaddockArea([ [1,0], [1,1] ])                                     // Input out of range.
PaddockArea([ [4,3],[5,2],[5,1],[4,0],[3,0],[2,1],[2,2],[3,3] ])  //"Input out of range."
PaddockArea([ [212,0], [1,-113], [0,0], [0,1] ])                  // "Coordinates outside of -10 to 10 range."
PaddockArea([ [2,2], [1], [5] ])                                  //"Invalid input.  Coordinates must have a pair."

// these should pass
PaddockArea([ [1,0], [1,1], [0,0], [0,1] ]) === "0.5 acres"
PaddockArea([ [0,-10], [7,-10], [0,-8], [0,-10] ]) ===  "7.0 acres"
PaddockArea([ [-7,4], [-5,5], [-5,7], [-7,7], [-8,6],[-8,5] ]) === "5.5 acres"
PaddockArea([ [-2,-7], [6,-7], [3,-1], [-1,4], [-2,-7] ]) === "49 acres"

PaddockArea([ [4,6], [4,-4], [8,-4], [8,-8], [-4,-8],[-4,6] ])     // keep getting -104 and not, 128, perhaps this is going counter-clockwise?? still trying to debug this

PaddockArea([ [1,0.45], [3, 4.55555555], [1,6.33222222] ]) === "8.8 acres"

// not mention in the challenge, but other tests for future considerations:
PaddockArea([ ["ddd"], "heyhey"])
PaddockArea("&#x2603;")  // troll snowman ascii


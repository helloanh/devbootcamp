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

            sum_x_to_y =  0*-10 + 7*-8 + 0*-10 = -56
            sum_y_to_x = -10*7 + -10*0 + -8*0 = -70

    3. area = (sum_y_to_x - sum_x_to_y) / (2.00)
            area = -70 -(-56) = 57/2 = 7

    4. return area.toPrecision(2) to have one sig fig

  Assumptions:
    - the input is a nested array of x,y coords, and the values are in acres
    (not yards, meters, etc.)
      ex: (0, -10) (7,-10) (0,-8) (0,-10) is represented as
          [[0,-10], [7,-10], [0, -8], [0, -10]]

  Sources:
    http://www.wikihow.com/Calculate-the-Area-of-a-Polygon
    http://mathworld.wolfram.com/PolygonArea.html
    http://www.mathopenref.com/coordpolygonareacalc.html

  Last Words:

    Ruby wouldn't be great for this problem, since JS execution runs
    on average 6x faster.

    There is definitely some room to refactor since the
    inner for loop take our complexity of the algorithm to O(n*n).

    I would still stick to the array data type but change
    the nested array input structure to reduce back to O(n).

 */


function PaddockArea(array_coords) {
  var sum_x_to_y = 0;
  var sum_y_to_x = 0;
  var arr_size = array_coords.length;

  if (arr_size === 0) {
    //check for empty array
    console.log("Invalid input.  Coordinates cannot be empty.");
  }

  if (arr_size < 3  || arr_size > 7) {
    //check input outside of 3-6 range
    console.log("Input out of range.");
  }

  for (var i = 0; i < arr_size; i++ ) {
    for (var j =0; j < array_coords[i].length; j++) {

      //test for inner coordinates -10 to 10 range
      if (array_coords[i][j] < -10 || array_coords[i][j] > 10) {
        console.log("Coordinates outside of -10 to 10 range.");
      }

      // now we can calculate the area
      // still need weave the X column with corresponing Y+1 value until Yn
      // and Y column with X+1 value until Xn
      sum_x_to_y += array_coords[i][j] * array_coords[j][i];
      sum_y_to_x += array_coords[j][i] * array_coords[i][j];
      var area = sum_y_to_x - sum_x_to_y;

      console.log ( area.toPrecision(2) + "acres");
      }
  }
}


// --------------- TEST CASES -------------

PaddockArea([ [1,0], [1,1] ])     // "Input out of range."
PaddockArea([ [4,3],[5,2],[5,1],[4,0],[3,0],[2,1],[2,2],[3,3] ]) // "Input out of range."
PaddockArea([ [212,0], [1,-113], [0,0], [0,1] ])  // "Coordinates outside of -10 to 10 range."

PaddockArea([ [1,0], [1,1], [0,0], [0,1] ])  // "7 acres"
PaddockArea([ [0,-10], [7,-10], [0,-8], [0,-10] ]) //
PaddockArea([ [-2,-7], [6,-7], [3,-1], [-1,4], [-2,-7] ])


// not mention in the challenge, but other tests for future considerations:
PaddockArea([ ["ddd"], "heyhey"])
PaddockArea("&#x2603;")  // troll snowman ascii
PaddockArea([ [1,0.45], [3, 4.55555555], [0,36.33222222]
/*

Name: Anh Kim

Write four functions:  sum, mean, and median.  Each accepts an array
and returns its respective calculation.

Below you will find driver code. Run the code in this file either from the command line
using Node.js or by pasting the code of this entire file into your
browser console.  All tests will log 'true' in the console when
they pass--false, otherwise.

I would encourage you to let the tests guide your work.  Code has been
provided to pass the first test.  The next step would be to make the
second test pass, and so on--sometimes your solution might result
in multiple tests passing.

*/

// __________________________________________
// Write your code below.


// oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
// evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]

var sum = function(array) {
  var total = 0;
  for (var i = 0, n = array.length; i < n; i++) {
    total +=array[i];
  }
  return total;
}

var mean = function(array) {
  var total = 0;
  for (var i=0, n = array.length; i < n; i++) {
    total+=array[i];
  }
  return total/n;
}

var median = function(array) {
  var median = 0;
  var n = array.length;
  //sort array
  array.sort();

  if (n % 2 === 0 ) {   // for even length
    median = (array[n/2 - 1] + array[n/2]) / 2;
  } else {      // for odd length
    median = array[(n-1)/2];
  }
  return median;
}

// __________________________________________
// Driver Code:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)

// -----------------------------------
// Terminal log
AnhMacBook:~ anhkim$ cd js_Bin
AnhMacBook:js_Bin anhkim$ node sum_mean_median.js
1. true
27
2. false

/Users/anhkim/js_Bin/sum_mean_median.js:66
    throw "ERROR: " + message;
                    ^
ERROR: sum should return the sum of all elements in an array with an odd length.
AnhMacBook:js_Bin anhkim$ node sum_mean_median.js
1. true
2. true
3. true
4. true
5. true
6. true
7. true
8. false

/Users/anhkim/js_Bin/sum_mean_median.js:66
    throw "ERROR: " + message;
                    ^
ERROR: median should return the median value of all elements in an array with an odd length.
AnhMacBook:js_Bin anhkim$ node sum_mean_median.js
1. true
2. true
3. true
4. true
5. true
6. true
7. true
8. true
9. true
AnhMacBook:js_Bin anhkim$

// reflections:
// You might notice that for the for loop, my syntax looks at little bit different.
// When I set up the var = 0, I also store n = array.length as a variable at the same time.
// This makes the run time a bit faster since the computer does not have to find the array.length
// each time it loops around.  We only have two arrays with the length 7 and 8, the the run time
// is not really noticable.  But when the array length is really long, such as 1000, etc, the run time
// should be faster when you store the array.length into a variable.
//
// Overall, I enjoy the javascript looping syntax a lot of than ruby.
// It seems more natural for me since it reminds me of the C language.
// I do notice the code is not as clean as ruby (arrrh, so many semicolons!),
// But it is easier to follow for me.
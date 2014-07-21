sports = ["Football", "Tennis", "Baseball", "Hockey"]
sports.sort()
//[ 'Baseball','Football', 'Hockey', 'Tennis' ]

//ascending numerical sort
numbers = [7, 23, 6, 74] numbers.sort( function(a,b) { return a - b} )

// Descending numerical sort
numbers = [7, 23, 6, 74] numbers.sort(function(a,b){return b - a})
# Binary Search - Finding the First or Last Occurence

# array
2  4  10  10  10  18  20
# index
0  1  2   3   4    5   6

# basic implementation

def binary_search(arr, n, x)
  low = 0
  high = n-1
  while low <= high
   mid = (low + high) /2
    if x == A[mid]
      mid
    else x < A[mid]
      high = mid -1
    else
      low = mid+1
    end
  return -1
end
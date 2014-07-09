# List

List is nothing but a collection of an objects of the *same* type.

#### Let's define a basic list:
  + store a given number of elements of a + given data-type
  + write/modify element of a position
  + read element at a position

An array gives us all of these features

``` c
 int A[10];
 A[i] = 2;
 print A[i];
```

#### Now, what if I want a dynamic list?
  + create an empty list, with the size 0
  + insert
  + remove
  + count
  + read/modify element at a position
  + specify data-type


Think of an array with
A[0] ... A[n]


``` c
  int A[MAXSIZE];
  int end = -1;
  insert(2)
  insert(4)
  insert(6)
  insert(7)
  insert(9)
```

output: [2,4,6,7,9, ... ]

Now let's insert 5 into index 2
``` c
  int A[MAXSIZE];
  int end = -1;
  insert(2)
  insert(4)
  insert(6)
  insert(7)
  insert(5,2)
```
This will shift all the subsequent elements after index 2 one position to the right.  Hence, the output of the array now look like

[2,4,5,6,7,9, ...]

Let's remove the first element at index 0
remove(0)
Then all elements on the right will move to left
[4,5,6,7,9, ...]

Now we are done with all the requirements for a dynamic list.  But there is something to keep in mind.  What is a good MAXSIZE?

There is no good MAXSIZE.  We need to have a strategy when the list is full.  When the array is full, create a new larger array, and copy previous array elementsinto the new array.  Then free the memory for the previous array.

The process to do this is costly, in term of time.

Usually when an array is full, we copy the old elements into the new array with **double** the MAXSIZE.

#### What is the cost of all of these operations in a dynamic list?
  1. Access - read/write element at aindex takes *constant* time
    + O(1
  2. Insert at the end of the list
    + also constant tim
  3. Insert at a particular position
    + O(n), time will be proportional tthe length of the lis
  4. Remove - O(n
  5. Add - or insert an element at the end when the array is full
    + O(1) if list is not full
    + O(n) if the list if full

#### Pros and Cons of List
good:
    + access elements at any index at constant time
costly:
    + if we have to remove elements from the list
    + if we have to insert elements from a particular position
    + if list grows and shrinks alot
    + not efficient in terms of memory, since there are many empty cells


*Source*: https://www.youtube.com/watch?v=HdFG8L1sajw&index=2&list=PL2_aWCzGMAwI3W_JlcBbtYTwiQSsOTa6P

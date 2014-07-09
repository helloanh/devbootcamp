# Linked List

#### Why We Need Linked List: How Memory Works
We need to look at how memory works before we can understand linked list.

Suppose first cell has the memory address of 200, the second at 201, the third at 202, and so on...

<a href="http://imgur.com/sR6Q2JT"><img src="http://i.imgur.com/sR6Q2JT.png?1" title="Hosted by imgur.com"/></a>

Let's try to talk about how memory work with a story.
Alberta is a programmer and she is building an app.  She needs to store some data, so she needs to take to the memory manager.  The memory manager keeps track of what part of the memory is free and what part is allocated.  Joey is the memory manager for today.

Albert: Hey, Joey, give me this:
``` c
int x;
```
Joey walks over to the computer's memory and find four 4 bytes of memory at the address 217 to store int x.

Albert: Alright, I still need a few more things, Joey
``` c
int x;
x = 8;
int A[4];
A[3] = 2;  // using the starting address 201 + index(3) * 4 = 213
           // this gives us constant time for arrays

```

Now let's say we fill out the array A with 6,5,4,2,8:
<a href="http://imgur.com/qUDSRbe"><img src="http://i.imgur.com/qUDSRbe.png?1" title="Hosted by imgur.com" /></a>

Alberta at some point, said she needs to extend her array:

Joey, our memory manager is a bit grumpy.  Joey needs to do extra work.  He has to copy our previous elements into a new array *and* he needs one piece of information: the size of the new array.

Let's say Joey starts the new array at the memory location 224.

<a href="http://imgur.com/RXKxiCS"><img src="http://i.imgur.com/RXKxiCS.png" title="Hosted by imgur.com" /></a>

Joey wants to make sure, he double the size of the new array.
Now Alberta feels bad for making Joey running around to fill requested numbers in the memory.  She is looking for alternatives to the list data structure.  She found linked list to solve her problem.

#### Linked List

Alberta now makes a separate request for each of the following numbers: 6,5,4,2.

Joey runs to the memory, but alocate each number at a *different* memory location.

Notice that each of the number are not adjacent to each other.  (Due to randomization, there is a small probabillity that a few might be next to each other.)

##### Let's look at our memory now:

<a href="http://imgur.com/Wl6h8va"><img src="http://i.imgur.com/Wl6h8va.png" title="Hosted by imgur.com" /></a>

But how do we store the position of each block?  We need to store extra infomation in each block.

In one part of the block, we store the data, and in the second part of the block, we store the memory address.

<a href="http://imgur.com/Y2utgBn"><img src="http://i.imgur.com/Y2utgBn.png" title="Hosted by imgur.com" /></a>

Notice zero next to the number 2 is used to signify the end of the block.

``` c++
  Struct Node {
  int data;       // 4 bytes
  Node* next;     // 4 bytes, this stores the address of the next node
  }
```

In order to implement linked list, we need the address of the head node and the address of the last node (which is null or zero).  The head node gives us access to the complete list.

<a href="http://imgur.com/WwqEjmK"><img src="http://i.imgur.com/WwqEjmK.png" title="Hosted by imgur.com" /></a>

Notice the *only* way to traverse the linked list of the node, is to access the head node.  If we want to insert a node in the linked list, we can rewrite the last node's null or zero value to a memory address.  Then we can attach the new node onto the last node.

For example, the number 2 now have 252 as its memory address.  The newly created number 3 has the NULL or 0 value.

<a href="http://imgur.com/DGZ1hsD"><img src="http://i.imgur.com/DGZ1hsD.png" title="Hosted by imgur.com" /></a>

Unlike arrays, we cannot access the elements in constant time.  Since we have to start from the head, the time taken to access elements is propotional to n-elements of the list.  Thus, the worst case is O(n).  Insertion time is also O(n).

Notice the benefit of linked list is, we don't waste extra memory unlike the list (array) structure.



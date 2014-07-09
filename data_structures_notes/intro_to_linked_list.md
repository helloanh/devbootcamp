# Linked List Data Structure

When we use arrays, we have some limitations.  We need to look at how memory works.

This is our memory picture.  Suppose first cell has teh memory address of 200, the second at 201, the third at 202, and so on...

![alt tag](http://imgur.com/sR6Q2JT)

Albert is a programmer and he is building an app.  He needs to store some data, so he needsto take to the memory manager.  The memory manage keeps track of what part of the memory is free and what part is allocated.

Albert: give me
``` c
int x;
```

Memory Manager walks to the computer's memory and find four 4bytes of memory at the address 217 to store int x.

Albert: give me
``` c
int x;
x = 8;
int A[4];
A[3] = 2;  // 201 + 3X4 = 213

```
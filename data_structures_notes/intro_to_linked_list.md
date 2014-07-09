# Linked List Data Structure

We need to look at how memory works before we can understand linked list.    
Suppose first cell has teh memory address of 200, the second at 201, the third at 202, and so on...

<a href="http://imgur.com/sR6Q2JT"><img src="http://i.imgur.com/sR6Q2JT.png?1" title="Hosted by imgur.com"/></a>

Let's try to talk about how memory work with a story.  
Alberta is a programmer and she is building an app.  She needs to store some data, so she needs to take to the memory manager.  The memory manager keeps track of what part of the memory is free and what part is allocated.  Joey is the memory manager for today.

Albert: Hey, Joey, give me this:  
int x;
```

Memory Manager walks to the computer's memory and find four 4bytes of memory at the address 217 to store int x.

Albert: Alright, I still need a few more things, Joey  
``` c
int x;
x = 8;
int A[4];
A[3] = 2;  // 201 + 3X4 = 213

```

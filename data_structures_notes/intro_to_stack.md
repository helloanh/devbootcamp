# Stack

## Stack as Abstract Data Type

We are looking at the logical view of stack.  Stack, like the name suggests, emulate the feature in the real world.

For example, a stack of place, a stack of disk, etc.

### Last In First Out : LIFO
A stack is a last in first out structure.  The last disk in is the first disk out.  You cannot take in or remove items in the begin.

### Formal Defition
A list with the restriction that insertion and deletion can be performe only from one end, called the top.

The only valid operations are: pop, push, is_empty?, top

All the operations can be performed at constant time at O(1).

### Applications of Stack
  + function calls/recursion
  + undo in an editor
  + balanced parentheses (used in compiler)

## Implementation of Stack

Array impementation pseudocode:
``` c
int A[10]  // make an empty array of size 10
top = -1   // empty stack

push(x) {
  top = top + 1
  A[top] = z
}

pop(x) {
  top = top - 1
}

top(x) {
  return A[top]
}

isEmpty( {
  if (top == -1)
    return true
  else
    false
  end
}

```

``` c++
#include<studio.h>
#define MAX_SIZSE 101

int A[MAX_SIZE];
int top = -1;

void Push(int x) {
  if(top == MAX_SIZE -1) {
    printf("error: stack overflow\n");
    return;
}
  A[++top] = x;
}

void Pop(x) {
  if(top == -1 ){
    printf(Error: No element to pop\n");
  }
  top--;
}

int Top() {
  return A[top];
}

void Print() {
  int i;
  printf("Stack: ");
  for(i = 0; i <= top; i++)
    printf("%d ", A[i]);
  printf("/n");
}

int main() {
  Push(2); Print();
  Push(5); Print();
  Push(10); Print();
  Pop(); Print();
  Push(12); Print();
}

```

// This is not an ideal implementation of stack.  Ideally we would want to use OOP or Struc implementation.


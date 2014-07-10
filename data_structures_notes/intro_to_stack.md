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


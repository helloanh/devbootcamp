# Using Stack to Reverse

A stack can be used to reverse a list or a collection. (Or to tranverse a list or colletion in reverse order).

Two problems we are going to solve:
1. reverse a string
2. reverse a linked_list


### Reverse A String
    Input: "hello"
    Output : "olleh"

We can create a stack for our characters:

<a href="http://imgur.com/xn1gxkZ"><img src="http://i.imgur.com/xn1gxkZ.png" title="Hosted by imgur.com"/></a>

Once all character at the string are going into the stack, we can get the top of the stack and pop.  We keep doing this until the stack is empty.

``` c++
#include<iostream>
#include<stack>    // stack from standard template library
using namespace std;


void Reverse(char *C, int n) {
  stack<char> S;

  //loop for push
  for(int i=0; i<n:i++) {
    s.push(C[i]);
  }

  //loop for pop
  for(int i=0; i<n;i++) {
    C[i] = S.top();  //overwrite the character at index i
    S.pop();  //perform pop
  }
}

int main() {
  char C[51];
  printf("enter a string": );
  Reverse(C, strlen(C));
  printf("Output = %s", C);

}
```

#### Performance Complexity

All the loops are running in linear time O(n).
Time complexity = O(n)
Space complexity = O(n)


## Using Linked List

<a href="http://imgur.com/F5yquen"><img src="http://i.imgur.com/F5yquen.png" title="Hosted by imgur.com"/></a>

Iterative solution
 + time O(n)
 + space O(1)

Recursive solution (implicit stack)
 + time O(n)
 + space O(n)


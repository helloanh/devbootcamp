# Introduction to Trees

Notice all of the other data structures have a linear or sequential structure.  Data is arranged in a logical start and end, and an element in any of these collection can have a next element or previous element.

<a href="http://imgur.com/8Z4OIPN"><img src="http://i.imgur.com/8Z4OIPN.png" title="Hosted by imgur.com" /></a>

Our choice of data structure depends on a few factors:
  + what needs to be stored
  + cost of operations
  + memory usage
  + ease of implementation (not the best strategy)

#### Why trees:

Trees are good to represent data with hierarchical structure.

<a href="http://imgur.com/N5Q7Vnh"><img src="http://i.imgur.com/N5Q7Vnh.png" title="Hosted by imgur.com"/></a>

**Definition** : a collection of entities called nodes linked together to represent hierarchy.  The top most of the tree is called the *root*.  Each node can contain *data*, or link or reference to its *children*.

In the picture the arrows represent our link.  In this tree, the root (1) is the parent of node (2) and node(3).  Node (2) and node (3) are sibblings.  Any node with out a child can be called a leaf node.

<a href="http://imgur.com/MstgNbW"><img src="http://i.imgur.com/MstgNbW.png" title="Hosted by imgur.com"/></a>

When we walk the tree, we can only walk in one direction (down).  So the root node can traverse down to its children node.

### Properties

Tree is a recursive data structure.

<a href="http://imgur.com/f9RqTVt"><img src="http://i.imgur.com/f9RqTVt.png" title="Hosted by imgur.com"/></a>

## Applications:
  + storing naturally hierarchical data
      + the file system


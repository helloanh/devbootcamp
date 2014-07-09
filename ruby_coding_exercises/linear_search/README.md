# Algorithm Drill Linear Search 
 
##Learning Competencies 

* Search a Data Structure
* Implement algorithms

##Summary 

 In computer science, there are many different ways to search through collections of data. Understanding the various algorithms and patterns for searching and sorting data sets is an essential part of computer science.

Ruby abstracts many of the lower-level functions of programming by providing us with methods like `Array#index`. You don't need to know *how* the index of an element is found, you just need to know *what* it is. In general, the fact that Ruby provides these abstractions is a Good Thing.

However, it is also useful to understand that there are many different ways to perform a simple task like finding the index of an element in a list. Aside from being important to your knowledge of theory, the searching and sorting algorithms you use will have a significant impact on your program's performance (how long it takes to execute and how much memory it uses).

One of the most basic searching algorithms is the **linear search**.  In this challenge, you will build a `linear_search` method using very basic programming constructs in Ruby.

Linear search (also called *sequential* search) is an algorithm for finding a particular value in a list by checking every one of its elements, one at a time and in sequence, until the desired one is found. *Source: [Wikipedia](http://en.wikipedia.org/wiki/Linear_search)*

Source: [Practical Programming](http://pragprog.com/book/gwpy/practical-programming)


##Releases
###Release 0 : Basic linear search

Write a method `linear_search` that takes two arguments: an object and an array.

- It should return the index of the object in the array by going through each element in sequence and returning the index of the first instance of the element.
- If the object searched for does not exist in the array, it should return `nil`.

```ruby
random_numbers = [ 6, 29, 18, 2, 72, 19, 18, 10, 37 ]
linear_search(18, random_numbers)
# => 2
linear_search(9, random_numbers)
# => nil
```

Here's the catch: you can't use any of Ruby's built-in `Array` or `Enumerable` methods *except* for `Array#[]`.  You will have to use of the keywords `for`, `while`, or `until`.

###Release 1 : Global linear search

Write a new method `global_linear_search` that returns an array of *all the indices* for the object it searches for.  In other words, if the object `x` is in more than one place in the array, `global_linear_search` will return an array containing the index of each occurrence of `x`.

```ruby
bananas_arr = "bananas".split(//)
# => ["b", "a", "n", "a", "n", "a", "s"]
global_linear_search("a", bananas_arr)
# => [ 1, 3, 5 ]
``` 


<!-- ##Optimize Your Learning  -->

##Resources

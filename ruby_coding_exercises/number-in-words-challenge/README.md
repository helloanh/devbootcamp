# Numbers In Words

##Learning Competencies

* Understand the types of data structures
* Implement data structures in Ruby
* Write recursive methods

##Summary

Convert an integer into its English equivalent.

Examples:

```ruby
in_words(4)         # => "four"
in_words(27)        # => "twenty seven"
in_words(102)       # => "one hundred two"
in_words(38_079)    # => "thirty eight thousand seventy nine"
in_words(82102713)  # => "eighty two million one hundred
                          two thousand seven hundred thirteen"
```

<cite>Source: Chris Pine, [Learn to Program](http://pine.fm/LearnToProgram/)</cite>

##Releases

###Release 0 : Ones and tens

Start small: make it work for numbers 1 through 100.

###Release 1 : Up to one thousand

Now bump up the meter: make it convert numbers up to 1000.


###Release 2 : Is it recursive?

Is your method recursive? If not, make it recursive.

Can you refactor your code in other ways to make it more concise and eloquent? Are there more efficient data structures you can use, like arrays or hashes?

###Release 3 : Up to one million

Change it again so that it will convert up to `1_000_000`.

Hint: in Ruby, you can use `_` underscores in numbers as if they were commas - the value of the number stays the same, it is just a trick to make it more readable.

#### How much higher?

Now try adding billions, trillions, and so on. How high can you go?


<!-- ##Optimize Your Learning -->

##Resources

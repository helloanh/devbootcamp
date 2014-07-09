=begin
Exercise: Implement FizzBuzz (Super Edition)

Input: an array of integers

Output: return back the array with "FizzBuzz" in place of the element that is
a multiple of 3 and 5 (or 15), "Fizz" in place of the element that is the multiple
of 3, and "Buzz" in place of the element that is the multiple of 5.


#---------PSEUDOCODE
method input (array_num)  #for example [1,2,3]
  array.each do |num|
    return fizzbuzz if num % 15 == 0
  else turn fizz if num % 3 == 0
  else return buzz if num % 5 == 0
  else return num
end
=end
# ----------- REVISED VERSIONS ------------------
def super_fizzbuzz(array)
  array.collect! do |n|
    if n % 15 == 0 then n = "FizzBuzz"
    elsif n % 5 == 0 then n = "Buzz"
    elsif n % 3 == 0 then n = "Fizz"
    else n = n
    end
  end
end

def super_fizzbuzz(array)
  array.collect! do |n|
    if n % 15 == 0
      n = "FizzBuzz"
    elsif n % 3 == 0
      n = "Fizz"
    elsif n % 5 == 0
      n = "Buzz"
    else
      n
    end
  end
end


# ----------- FIRST VERSION -----------------

def super_fizzbuzz(array)
  array2 = []
  array.each do |n|
    if n % 15 == 0
       array2 << "FizzBuzz"  # array2 = ["Fizz"] not [1,2, "Fizz"]
    elsif n % 3 == 0
      array2 << "Fizz"
    elsif n % 5 == 0
      array2 << "Buzz"
    else
      array2 << n
    end
 end
   return array2
end

# ------------ DRIVER CODE ------------------------
p super_fizzbuzz([1,2,3])  ==  [1, 2, "Fizz"]
p super_fizzbuzz([1,2,5])  == [1, 2, "Buzz"]
p super_fizzbuzz([1,2,15])  == [1, 2, "FizzBuzz"]
p super_fizzbuzz([30, 9, 20, 1]) == ["FizzBuzz", "Fizz", "Buzz", 1]


# ---------- REFLECTION ------------------
# I paired with Aeron on this one.  We originally tried the .each method, but we notice it doesn't
# return an array, which led us to create another array to push in the values.
# We tried the destructive way for our second version with the .collect! method.
# This shorten our code a bit since we do not have to create another array to push it in.
# I think the destructive method takes less memory.
# This is a great exercise since I can review the each, collect, and map method again.

# Update: collect and map are the same in ruby
# The differene between each vs. map (or collect):
#
# Array#each just takes each element and puts it into the block, then returns the original array.
# Array#collect takes each element and puts it into a new array that gets returned:

[1, 2, 3].each { |x| x + 1 }    #=> [1, 2, 3]
[1, 2, 3].collect { |x| x + 1 } #=> [2, 3, 4]
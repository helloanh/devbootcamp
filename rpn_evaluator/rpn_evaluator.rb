=begin

 Running on ruby 2.1.1p76
 Operating system: Mac OSX 10.9.3

INPUT: operators and operands in string format
OUTPUT: numeric total as an integer based on rpn input


Assumptions:
  if floats are involved for corner cases, the right implementation
    choice are below:
    return integer if all the values are an integer
    only return a float if a float is involved as input
      ex: "1 1 +" returns "2" and  not "2.0"
      ex: "1.0 1.0 +" return "2.0", "1.0 1 + " return "2.0"

  none of the inputs from the challenge take floats,
  so I assume the input contains only integer


Pseudocode:

  A. Implement a stack structure, going from left to right
      ex: expression = "2 3 4 + *"
          " 2 (3+4) *"
          " 2 * 7"
          " 14 "
      1. make an empty rpn_stack = [] to store values

      2. separate string into an array with operators and operands as element
          expression_arr = expression.split.(" ")  -> ["2","3","4","+","*"]
      3.  loop to each element of the expressions_array
           if the element is an operand
             pop the stack two times
             answer = calculate the appropriate operator (need four cases for +-*/)
             rpn_stack << answer
           else push the element into rpn_stack

      3.  LIFO, so pop the last item on the rpn_stack for final answer


  B. Need to find a way to implete "atoi" and "atof" in ruby,
     some choices in ruby:
      change into bytes, subtract by 48 (ascii character for 0)



  Corner cases:
    if input has length of one?
    if input is only an operator, raise error  ex: "+" or "++" -> error "invalid input"
    if input is two character in length ("2 +" or "++"), error "not enough arguments"
    if input is not a number "a b +", return error mgs, "invalid number"
    if input is special UTF-8 characters?
    if input is a negative exponent? "-25e-3"

=end

class RpnEvaluator

  ASCII_NUM_START = 48
  ASCII_PERIOD = 46
  ASCII_REGEX = /[^\x2A-\x39]/
  ALPHABET_INPUT = /[a-zA-Z]/

  def evaluate(string)
    if string.class != String
      puts "input is not a string"
    end

    string_array = string.split(" ")
    rpn_stack = []


    if string_array.length == 2
      puts "not enough arguments"
    end

    if ASCII_REGEX.match(string) == nil
      puts "invalid number"
    end

    if ALPHABET_INPUT.match(string) != nil
      puts "invalid number"
    end

    string_array.each do |n|
      if n == '+'
        cur_ans = rpn_stack.pop + rpn_stack.pop
        rpn_stack << cur_ans
      elsif n == '-'
        cur_ans = (rpn_stack.pop - rpn_stack.pop) * -1
        rpn_stack << cur_ans
      elsif n == '*'
        cur_ans = rpn_stack.pop * rpn_stack.pop
        rpn_stack << cur_ans
      elsif n == '/'
        cur_ans = rpn_stack.pop / rpn_stack.pop
        rpn_stack << cur_ans
      else
        rpn_stack << ascii_to_i(n)
      end
    end
    puts rpn_stack[-1]
  end

  def ascii_to_i(int_as_str)
    array_ascii = int_as_str.bytes
    converted_arr = array_ascii.map {|ascii| ascii - ASCII_NUM_START }
    converted_arr.inject { |sum, n| sum * 10 + n  }
  end

end

# for terminal input:
if ARGV[0]
  RpnEvaluator.new.evaluate(ARGV[0])
end


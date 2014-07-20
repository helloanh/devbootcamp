def letter_capitalize(str)
  str.split.map {|word| word.capitalize}.join('')
end

letter_capitalize("hello world") == "Hello World"


def vowel_count(str)
  str.scan(/[aieou]/).length
end

def palindrome(str)
  original_s = str.delete(' ').downcase
  copy_s = str.delete(' ').reverse.downcase
  original_s == copy_s
end

def number_addition(str)
  nums = str.scan(/[0-9]+/)
  nums.map {|n| n.to_i}.inject {|sum,n| sum+=n }
end

number_addition("75hello_there3") == 78
number_addition("22plus3and4") == 29
number_addition("22") == 22


def simple_add(num)
  1.upto(num).inject {|sum,n| sum+=n }
end

# Using the Ruby language, have the function SimpleSymbols(str) take the str
# parameter being passed and determine if it is an acceptable sequence by either
# returning the string true or false. The str parameter will be composed of + and
# symbols with several letters between them (ie. ++d+===+c++==a) and for the
# string to be true each letter must be surrounded by a + symbol. So the string
# to the left would be false. The string will not be empty and will have at least
# one letter.

def simple_symbols?(str)
  arr_str = str.split(//)
  arr_str.each_with_index do |char,i|
    if char.match(/[a-z]/i) and arr_str[i-1] != "+" and arr_str[i+1] != "+"
      return false
    else
      return true
    end
  end
end

simple_symbols?("+d+=3=+s+") == true
simple_symbols?("f++d+") == false

# take the array of strings stored in str_arr and return the third largest word

def third_greatest(str_arr)
  sorted_str = str_arr.sort_by {|word| word.length}
  sorted_str[-3]
end

third_greatest( ["coder","byte","code"])
third_greatest (["abc","defg","z","hijk"])

# refactored by arbitrary nth largest word
def nth_greatest_word_in_array(str_arr, nth_place)
  sorted_str = str_arr.sort_by {|word| word.length }
  return "Nth place out of bound." if nth_place < 0 && nth_place > str_arr.length
  puts "Words ordered by length: #{sorted_str}"
  puts "The answer for #{nth_place}th place: #{sorted_str[-1 * nth_place]}"
end

nth_greatest_word_in_array( ["coder","byte","code","hahahaa","nom"], 2)
nth_greatest_word_in_array( ["coder","byte","code"], 3)

# what if two words in the array have the same length?
nth_greatest_word_in_array( ["coder","byte","code", "code","mode","bode"], 3)

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
  regex_num = /[0-9]+/
  nums = str.scan(regex_num)
  nums.map {|n| n.to_i}.inject {|sum,n| sum+=n }
end

number_addition("75hello_there3") == 78

def simple_add(num)
  1.upto(num).inject {|sum,n| sum+=n }
end


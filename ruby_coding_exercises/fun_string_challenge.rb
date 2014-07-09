=begin

I. Part One
Conditions:
Create a simple method that takes a String and capitalizes
the even characters (counting from 1)
and then reverses the string.

=end
# Pseudocode
  new method (input string)
    "hellos" => HeLlOs
    "solleh" => SoLlEO

    "Hell" => HeLl
    "lleh" => LlEh

    as_array  = string.to_a # hellos" => [h,e,l,l,o,s]

.capitalize[i]
.capitalize[i+2]


#. Part 2 Refactor
def fun(input)
  array = input.split("")
  array.each_with_index do |letter, index|
    if index % 2 == 0
      puts letter.capitalize!
    else
      puts letter
    end
  end
  joined_string = array.join("")
  output = joined_string.reverse
  p output
end

fun("string")
###########

# ---------- TEST CODE -----


loop each index
  starting at i, and skip every other index until end of array

# Part 3. Class -------------------------

class String
  def fun_stringitize
    array = self.split("")
    array.each_with_index do |letter, index|
      if index % 2 == 0
        return letter.capitalize!
      else
        return letter
      end
      joined_string = array.join("")
      output = joined_string.reverse
       return output
    end
      # puts output
  end
end

# Driver Code
p string = "apples"
string.fun_stringitize!  # mean same as, new_variable = string.fun_stringitize
p string     # now equals "SeLpPa"

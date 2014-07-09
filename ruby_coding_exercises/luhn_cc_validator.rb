=begin
  Input: 16-digits credit card number
  Output: return true for correct card and false for incorrect card

  Prompt:
  Given a credit card number we should be able to validate whether it is valid
  based on the Luhn algorithm.

  Algorithm:

  1. Starting with the second to last digit, double every other digit until you reach the first digit
  2. Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart,
     10 becomes 1 + 0)
  3. If the total is a multiple of ten, you have received a valid credit card number!

  Exanple:
  Given 4563 9601 2200 1999
  Origin: 4   5   6   3   9   6   0   1   2   2   0   0   1   9   9   9
  Step 1: 8   5  12   3  18   6   0   1   4   2   0   0   2   9  18   9
  Step 2: 8 + 5 + 1 + 2 + 3 + 1 + 8 + 6 + 0 + 1 + 4 + 2 + 0 + 0 +2+ 9 + 1 + 8 + 9
  Step 3: 70 (total above) % 10 == 0
  Step 4: Profit

  Your class will need to return true or false when we call the #check_card.
  Your class needs to be initialized with a credit card number that is exactly 16
  digits otherwise you should receive an ArgumentError.


  Pseudocode:
  1. define a class CreditCard
  2. method1: initialize card_number
      @card_number = card_number
      make Arg error for != 16
      card_number.to_s.length != 16 raise error
      note: make sure input has no spaces

  3. method luhn_calculations
      split digits into individual number,
      put into an array,
      start at index -2

      if we reverse the string, so ruby knows the rightmost is odd
       for even num % 2 == 0, return the same digit
       for odd num % 2 == 1, return the digits but double

       @card_number.split do |number, index|
         when i % 2 == 0 , return number number+=number
         when i % 2 == 1, return number*2, number+=number
       end

=end
# ----------------------------


class CreditCard
  def initialize(card_number)
    if card_number.to_s.length != 16
      raise ArgumentError.new("Wrong Character Count")
    end
    @card_number = card_number.to_s
    @total_sum = 0
  end

  def check_card
      num = @card_number.gsub(/\s/,'').reverse.split('').map(&:to_i)

      odd = true
      num.collect! { |d|
        if odd = !odd
          d * 2
        else
          d
        end
      }
      num.collect! { |d|
        if d > 9
          d - 9
        else
          d
        end
      }
      total_sum = num.inject {|sum,x| sum + x }
      total_sum % 10 == 0
  end
end

#-----------------------------------------------
# trial 1 code passes for 6/7 requirements
class CreditCard
  def initialize(card_number)
  # spaces?
    if card_number.to_s.length != 16
      raise ArgumentError.new("Wrong Character Count")
    end
    @card_number = card_number
  end

  def calculate
    # turn the digits into an array of integer
    num = @card_number.to_s.reverse.split(//).map { |d| d.to_i }
    num.inject(0) { |memo, i|
      if memo + (odd = true)
        i
      else
        if i*2 > 9
          i*2 - 9
        else
          i*2
        end
      end
    } % 10 == 0
    @num = num
  end

  def check_card
    return true if @num = true
    return false if @num != true


    # @num % 10 == 0? true : false
    # undefined method `%' for nil:NilClass
  end
end

#---------------------------------------------------------------------------------

# reflections:
This challenge was difficult but it was an excellent excerise for pairing.
I learn to appreciate coding with another person because of this exercise.
It must have taken more than half of our time trying to debug the "undefined method % for nil:NilClass"
error code.
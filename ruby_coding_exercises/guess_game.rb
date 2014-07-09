=begin
Exercise: Build a simple guessing game
Create a GuessingGame class which is initialized with an integer called answer.

Define an instance method GuessingGame#guess which takes an integer called guess
as its input. guess should return the symbol :high if the guess is larger than the
answer, :correct if the guess is equal to the answer, and :low if the guess is lower than the answer.

Define an instance method GuessingGame#solved? which returns true if the most recent
guess was correct and false otherwise.

start pseudocode:
  1. first define a class call Guessing Game
  2. inside the class, initialize integer @answer = answer
  3. set the answer = 1 + rand(100)
  4. define another method, call guess
       ask the user to input their guess with gets.chomp
       @guess = guess
       guess = gets.chomp

      start the conditional,
         unless @answer == guess do
           if guess < @answer
             return :low
           else
              return : high

  5. make another method call solved?
      def solve?

        if @guess == :correct
          return true
        else
          return false
        end


  challenging, calling and passing @answer
  problems: last_guess =nil, las_result = nil ?? is this necessary?
=end

#refactored ------------------------------------------------------------------------------------
class GuessingGame

  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess

    case guess
      when guess > @answer
        :high
      when guess < @answer
        :low
      when guess == @answer
        :correct
    end
  end

  def solved?
    @guess == @answer ? true : false
  end
end

# version 1.0 --------------------------------------------------------------------------------
class GuessingGame
  # attribute method is shortens the code since we don't have to define seperate methods for high, low, and correct
  attr_accessor :high, :low, :correct

  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    print "Guess a number from 1 to 100: "
    @guess = guess

    if guess > @answer
      :high
    elsif guess < @answer
      :low
    else
      :correct
    end
  end

  def solved?
    @guess == @answer ? true : false
  end
end


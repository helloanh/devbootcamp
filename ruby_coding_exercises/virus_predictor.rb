=begin =============================================================
                                                                   #
      YOUR NAMES:  1)  Anh Kim Hoang      2) Mia Garbagnati        #
   =================================================================

   Input:
      This program calculates the spread of an epidemic based on three necesasry arguments:
      state of origin, population density, and population size.
      (The other two arguments: region & region spread, are unnecessary).
      The 50 states are accessable through loading it from the state_date file
      that is in the same directory.

   Output:
      User see a text with specifies the number of deaths and the rate of the spread
      in that particular state.  (This is shown after user initialize the instance from
      VirusPredictor class and call the method virus_effects)

   Bonus:
      Create a report for all 50 states, not just the 4 listed below.
      Is there a DRY way of doing this?

   SUBMIT your challenge at: http://socrates.devbootcamp.com/challenges/424

   Reflections: It's pretty niffy that I can load another file from the same directory and
                do an iterative loop to access each nested hash into the VirusPredictor program.
                Since we are moving into SQL and database next week, I can see the relationship between
                this exercise and the database management tool such as SQL.
                It is alright to write my own code to access the numeric data from
                STATE_DATA hash, but if I were to do it each time in the future, it becomes repetitive.
                For example, if I want to update the program to utilize the region and regional_spread,
                then I have to hand-code the iteration again.

                I can see why SQL was invented to solve this issue when we have size, reliablilty,
                and future updates to consider.

=end

#--------------------------------------------------------------------
# REFACTORED version 2.0
#--------------------------------------------------------------------
# Refactored version 3

# EXPLANATION OF require_relative
# this loads the state_data file from the same directory
require_relative 'state_data'

class VirusPredictor

#region, and regional spread is not necessary since we never use it in our code

  #we should take out region, and regional spread since it is not necessary
  def initialize(state, population_density, population)
    @state = state
    @population_density = population_density
    @population = population
  end

  #we don't really need to put any parameters for the virus_effects method,
  #this method just call other methods from the same class
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private  # blocks methods below. if pasted above virus_effects, error: NoMethodError
           #private keeps the calculations below away from the user

  def predicted_deaths
    death_toll= 0.05
    rate = {200 => 0.4, 150 => 0.3, 100 => 0.2, 50 => 0.1}
    rate.each { |k,v| death_toll = (@population * v).floor if @population_density >= k }
    puts"#{@state} will lose #{death_toll} people in this outbreak"
  end

  def speed_of_spread #in months
    speed = 0.0
    case @population_density
      when 0..49 then speed += 2.5
      when 50..99 then speed += 2
      when 100..149 then speed += 1.5
      when 150..199 then speed += 1
      else speed += 0.5
    end
      puts " and will spread across the state in #{speed} months.\n"
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

 STATE_DATA.each_key do |state_key|
  state_key = VirusPredictor.new(state_key,
    STATE_DATA[state_key][:population_density],   #again, we took out the region and region spread since no where in
    STATE_DATA[state_key][:population])           #our program requires these two arguments.
  state_key.virus_effects
end


#--------------------------------------------------------------------------------------------------------------------
# REFACTORED version 1.0

# EXPLANATION OF require_relative
# this loads the state_data file from the same directory
require_relative 'state_data'

class VirusPredictor

#region, and regional spread is not necessary since we never use it in our code

  #we should take out region, and regional spread since it is not necessary
  def initialize(state, population_density, population)
    @state = state
    @population_density = population_density
    @population = population
  end

  #we don't really need to put any parameters for the virus_effects method,
  #this method just call other methods from the same class
  def virus_effects

    predicted_deaths(@population_density, @population)
    speed_of_spread(@population_density)
  end

  private  # blocks methods below. if pasted above virus_effects, error: NoMethodError
           #private keeps the calculations below away from the user

  def predicted_deaths(population_density, population)
    #floor rounds the numbßer below, so it becomes an integer
    # epidemic spreads more rapidly in highly dense area, thus higher population density means higher death

    # there is a pattern here.  from 200 to 50, we reduce the value by 50 while we reduce the 0.4 by 0.1 by each iteration
    # also if the population density is < 49, the population is divided in half or 0.5
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread(population_density) # took away the state argument, it is not necesary
    speed = 0.0                           #spread of disease in each state with respect to pop. desnsity

    if @population_density >= 200       #speed slows down when the pop. density is larger
      speed += 0.5                      #speed spreads faster when density is smaller
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

#  STATE_DATA means this is a constant
#  the line below initialize a new instance object from the VirusPredictor class
#  accessing state_data file nested hash below by first identifying the state with a string "Alabama"
#  then STATE_DATA["Alabama"][:population_density] access the value from the first index of the nested hash
#  which is 94.65 in the {population_density: 94.65
#  note {:population_density => 94.65 is the equivalent of {population_density: 94.65}

#  take out the last two arguments since we do not ever use it in our program
#  this means we have to adjust the def initialize above so that there will also be three corresponding argument as well
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

# find a way to access all fifty states:
# all_states = VirusPredictor.new

=begin

Alabama will lose 482202 people in this outbreak and will spread across the state in 2.0 months.

New Jersey will lose 3545836 people in this outbreak and will spread across the state in 0.5 months.

California will lose 15216572 people in this outbreak and will spread across the state in 0.5 months.

Alaska will lose 36572 people in this outbreak and will spread across the state in 2.5 months.

=end

#----------------------------------------------------------------------------------
# ORIGINAL VERSION
require_relative 'state_data'

class VirusPredictor

#changing the name from state_of_origin to state
#region, and regional spread is not necessary since we never use it in our code

  def initialize(state, population_density, population, region, regional_spread)
    @state = state
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  def virus_effects
    predicted_deaths(@population_density, @population)
    speed_of_spread(@population_density)
  end

  private  # blocks methods below. if pasted above virus_effects, error: NoMethodError

  def predicted_deaths(population_density, population)
    #floor rounds the numer below, so it becomes an integer
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread(population_density) # took away the state argument, it is not necesary
    speed = 0.0                           #spread of disease in each state with respect to pop. desnsity

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

#the STATE_DATA is a constant, we can grab it outside of the class
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread])
alaska.virus_effects




=begin

  Anh Kim Hoang
  Phase 0, Unit 2, Wk 1
  Jan.27.2014
  Assignment: class Drawer

  Info: This program creates a class Drawer to emulate properties of a virtual "drawer" object,
  specifically to put and remove kitchen silverware, and to set the condition if utensils are
  clean or not clean.  The separeate Silverware class produces kitchen-related utensils object to be placed
  inside the virtual "drawer" object.



=end

#------------------------------------------------------------------------------------------------
# Edited version

class Drawer
  attr_reader :contents
  # Are there any more methods needed in this class?

  def initialize
    @contents = []   # create an empty array to put objects in later
    @open = true

  def add_item             # push the item into the @contents array
    @contents << utensil   # item is a bit vague, perhaps we can rename item to utensil?
  end

  def remove_item(utensil = @contents.pop) #what is `#pop` doing?
    @contents.delete(utensil)   #pop removes the last item from the @contents array
  end

  def dump
    #line 53 is misleading since it only notifies the user the drawer is empty.
    #however, the drawer is NOT empty since we haven't modify any changes in the memory
    # use Array#clear method to empty array
    @contents.clear
    puts "Your drawer is empty."
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each { |silverware| puts "#{silverware} - Clean? {silverware.type}" }

  end
end

class Silverware
  attr_reader :utensil   #why are we changing the name to :type, can't we just use :utensil

  # Are there any more methods needed in this class?
  # according to line 98, there is a .clean_silverware method, but it is not written in this class
  # we need to make another method called clean_silverware, which set @clean = true and notify the user
  # the utensil is clean.

  def initialize(utensil, clean = true)
    @utensil= utensil
    @clean = clean
  end

  def eat
    puts "Eating with the #{utensil}."
    @clean = false
  end

  def clean_silverware
    puts "Your #{utensil} is now shinny and clean!"
    @clean = true
  end
end

knife1 = Silverware.new("knife")      #create a new instance for the class Silverware and stores it as the variable knife1
#spoon1 = Silverware.new("spoon")       #should have also do the same variable initialization here, instead of line 87-88
#fork1 = ilverware.new("fork")

silverware_drawer = Drawer.new        # create a new instance for the class Drawer
silverware_drawer.add_item(knife1)    # pushes the knife1 into the silverware_drawer object instance
silverware_drawer.add_item(Silverware.new("spoon"))  # line 86-87 pushes two more object into the silverware_drawer object
silverware_drawer.add_item(Silverware.new("fork"))   # but without initializing variable. this is a bit inconsistent
silverware_drawer.view_contents       # => ["knife", "spoon", "fork"]

silverware_drawer.remove_item               #pop the last utensil from the @contents array
silverware_drawer.view_contents         # => knife-clean, spoon-clean
sharp_knife = Silverware.new("sharp knife") # create another object and stores it as "sharp knife"


silverware_drawer.add_item(sharp_knife)     # push "sharp_knife" into @contents array

silverware_drawer.view_contents       # => The drawer contains:
              # => knife - clean? true
              # => spoon - clean? true
              # => sharp_knife - clean? true

removed_knife = silverware_drawer.remove_item(sharp_knife)  # => ["knife", "spoon"]
removed_knife.eat             # => "eating with sharp_knife", in memory: @clean = false
removed_knife.clean_silverware                   # => "your sharp_knife is now shinny and clean!", in memory: @clean = true

silverware_drawer.view_contents     # => knife, "spoon", "sharp_knife"
silverware_drawer.dump        # => clean all items in silverware_drawer.dump
silverware_drawer.view_contents                 # What should this return? This should return an empty array


fork = silverware_drawer.remove_item(fork)     # add some puts statements to help you trace through the code...
fork.eat

#BONUS SECTION
# puts fork.clean


end

#------------------------------------------------------------------------------------------------
# Gist version, with commments

class Drawer
  attr_reader :contents
  # Are there any more methods needed in this class?

  def initialize
    @contents = []   # create an empty array to put objects in later
    @open = true     # rename @contents to @inside_drawer?
  end

  def open         #when the inside_drawer is open, is this necessary?,
    @open = true
  end

  def close       # when the inside_drawer is close
    @open = false
  end

  def add_item         # push the item into the @contents array
    @contents << item    # item is a bit vague, perhaps we can rename item to utensils?
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing?
    @contents.delete(item)   #pop removes one item from the @contents array
  end

  def dump  # what should this method return?

    #line 53 is misleading since it only notifies the user the drawer is empty.
    #however, the drawer is NOT empty since we haven't modify any changes in the memory

    puts "Your drawer is empty."

    # use Array#clear method to empty array
    # @contents.clear to make @contents = []
  end

  def view_contents
    puts "The drawer contains:"
    # error, this should be @contents.each { |silverware| puts "#{silverware} - Clean? {silverware.type} }
    @contents.each {|silverware| puts "- " + silverware.type }
  end
#end            # add a keyword-end for class Drawer

class Silverware
  attr_reader :type

  # Are there any more methods needed in this class?
  # according to line 98, there is a .clean_silverware method, but it is not written in this class
  # we need to make another method called clean_silverware, which set @clean = true and notify the user
  # the utensil is clean.

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  # def clean_silverware
  #   puts "your #{type} is now shinny and clean!"
  #   @clean = true
  # end
end

knife1 = Silverware.new("knife")      #create a new instance for the class Silverware and stores it as the variable knife1
#spoon1 = Silverware.new("spoon")       #should have also do the same variable initialization here, instead of line 87-88
#fork1 = ilverware.new("fork")

silverware_drawer = Drawer.new        # create a new instance for the class Drawer
silverware_drawer.add_item(knife1)    # pushes the knife1 into the silverware_drawer object instance
silverware_drawer.add_item(Silverware.new("spoon"))  # line 86-87 pushes two more object into the silverware_drawer object
silverware_drawer.add_item(Silverware.new("fork"))   # but without initializing variable. this is a bit inconsistent
silverware_drawer.view_contents       # => ["knife", "spoon", "fork"]

silverware_drawer.remove_item               #pop the last utensil from the @contents array
silverware_drawer.view_contents         # => knife-clean, spoon-clean
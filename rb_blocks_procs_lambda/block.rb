# There are three ways to create a Proc object in Ruby

# 1. Proc.new

proc_object = Proc.new { puts "I am a proc object"}
proc_object.call

# output I am a proc object


# 2. Using the proc method in the Kernel module.  The proc method is globally available
# (works only in ruby 1.9)

proc_object = proc {puts "Hello from inside the proc"}
proc_object.call
puts "Is proc_object a lambda - #{proc_object.lambda?}"  # false


# 3. Using the Kernel lambda method
proc_object = lambda { puts "Hello I am using the lambda method"}
proc_object.call
puts "Is proc_object a lambda - #{proc_object.lambda?}"  # true

# 4. Implicitly
def my_method
  puts "hello method"
  yield
end

my_method { puts "hello block"}
my_method

def my_method(&my_method)
  puts "hello method"
  my_block.call
  my_block
end

block_var = my_method { puts "hello block"}
block_var.call


# procs and lambdas have an "arity" method
# you can find out how many args a Proc object expects to receive

my_proc = Proc.new{|x| "hey there" * x}
puts "I need #{my_proc.arity} arguments"

# Q: What is the difference between Procs and lambdas
# has to do with control flow key words: return, raise, break, redo, retry
# this is rtue especially for the "return" keyword and "break" keyword


def my_method
  puts "before proc"
  my_proc = Proc.new do
    puts "inside proc"
    return
  end
  my_proc.call
  puts "after proc"
end

my_method

# the final puts method was not executed because the return key word halt us out of the method

def my_method
  puts "before proc"
  my_proc = lambda do
    puts "inside proc"
    return
  end
  my_proc.call
  puts "after proc"
end

my_method

# the final puts method is executed
# lambda DO NOT escape the method after the "return" keyword

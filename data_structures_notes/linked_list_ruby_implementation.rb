# in C++
struct Cell {
  string value;
  Cell* next;
};

# in Ruby, we can use Struct

# create a struct with :value and :next
Cell = Struct.new(:value, :next)

# create a head of our list
list = Cell.new("I am the head node", nil)

# method which create one more cell and return the struct
def linked_list(value, cell)
  return Cell.new(value, cell)
end

# method which recursively print value until the asteroid...
def recursive_print(list)
  p list.value
  recursive_print(list.next) unless list.next == nil
end

# create Linked List
# #<struct Cell value=10, ... next=#<struct Cell value=1, next=#<struct Cell value="head. hi", next=nil>

i = 0
10.times {
  i += 1
  list = linked_list(i, list)
}

recursive_print(list) # print out recursively our list
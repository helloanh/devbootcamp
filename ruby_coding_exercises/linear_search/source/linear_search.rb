
random_numbers = [ 6, 29, 18, 2, 72, 19, 18, 10, 37 ]
def linear_search(num, num_arr) # 18
  counter = 0
   until num_arr[0] == num  # if 6 != 18
    num_arr.shift  # [29, 18, 2, 72, 19, 18, 10, 37]
    counter +=1   # counter = 1
   end
    return counter
end


puts "--------DRIVER TEST --------"
p linear_search(18, random_numbers)
# => 2
p linear_search(9, random_numbers)
# => nil

random_numbers = [ 6, 29, 18, 2, 72, 19, 18, 10, 37 ]
def linear_search(num, num_arr) # 18
  counter = 0
   if num_arr[0] = num  # if 6 != 18
    num_arr.shift  # [29, 18, 2, 72, 19, 18, 10, 37]
    counter +=1   # counter = 1
   end
    return counter
end

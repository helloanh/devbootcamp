def atoi(int_as_str)  #"22"
  int_as_str.bytes.map { |ascii| ascii - 48 }.inject {|sum, n| sum * 10 + n }
end

def decimal_position(arr_of_ascii)
  len = arr_of_ascii.length
  arr_of_ascii.each_with_index { |ascii,i| len - (i+1) if ascii == 46 }
end

def atof(float_as_str)  #"21.34"
  ascii_arr  = float_as_str.bytes  # [50, 49, 46, 51, 52]
  tenth_position = decimal_position(ascii_arr)

  temp_arr = float_as_str.int_as_str.bytes.map { |ascii| ascii - 48 }
  no_decimal_arr = temp_arr.delete_if { |n| n < 0 }

  atoi(no_decimal_arr) / (10.000000 ** tenth_position)
end





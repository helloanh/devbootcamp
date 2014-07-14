# Implement your own version of Array#each, Array#map, Array#select, and Array#inject.
# Your method can use other enumerables but it must contain a yield statement

class Array
  def my_each
    1.upto(self.size) do |iter|
      yield(self[iter - 1])
    end
  end

  def my_map
    result_arr = []
    1.upto(self.size) do |iter|
      result_arr << yield(self[iter - 1])
    end
    result_arr
  end

  def my_select
    result_arr = []
    1.upto(self.size) do |iter|
      result_arr << self[iter - 1] if yield(self[iter - 1])
    end
    result_arr
  end

  def my_inject(sum = 0, &inputs)
    self.each do |i|
      sum = %inputs.call(sum, i)
    end
    sum
  end
end


[1,2,3,4,5].my_each {|n| puts n }     # 1 2 3 4 5
[1,2,3,4,5].my_map {|n| n * 2}        # [2,4,6,8,10]
[1,2,3,4,5].my_select { |n| n % 2 == 0 }   # [2,4]

class Array
  def sum
    self.inject(0) {|total,num| total+=num }
  end

  def square
   self.map {|n| n*n}
  end

  def square!
    self.map! {|n| n*n}
  end
end
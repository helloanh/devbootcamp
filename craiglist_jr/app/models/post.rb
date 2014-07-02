class Post < ActiveRecord::Base
  belongs_to :category
  # Remember to create a migration!
  def set_random_url
    random_string = "alkjsdhfglaquwhtjsnvaudshfg"
    self.url = random_string.split("").shuffle.join
    self.save
  end
end

# require_relative '../app/mod'

module ParseDictionaryItems
  def self.parse
    File.open("db/fixtures.txt", "r").each do |entry|
      Word.create(:word => entry.chomp)
    end
  end
end

ParseDictionaryItems.parse
# parse
  #--- DRIVER CODE ----

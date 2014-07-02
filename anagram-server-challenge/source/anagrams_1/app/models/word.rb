# require_relative '../../db/config'

class Word < ActiveRecord::Base
  # Remember to create a migration!

   # Returns an Array of Word objects which represent anagrams of this word
  # This can and should make calls to the database
  # Try to do it in as few calls as possible, without loading every word into memory.  If you can't, that's ok.
  def anagrams
  end

end

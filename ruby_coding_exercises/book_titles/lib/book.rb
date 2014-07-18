=begin
Book Titles in English obey some strange capitalization rules.
For example, "and" is lowercase in "War and Peace".
This test attempts to make sense of some of those rules.

Book Title Rules:
  1. first letter is capitalize
    ex "dune"  "Dune"
  2. articles: "and, of, an, a" are not capitalize if they appear after the first letter
  3. else if they are not [and, of, an, a], the first letter is capitalize
    ex "the invisible man", "The Invisible Man"
    ex "of mice and men",  "Of Mice and Men"
    ex "the lord of the flies"  "The Lord of the Flies"
  4.  if the letter is "i", it should be capitalize
  5. else capitalize all subsequent letters
=end

class Book

end
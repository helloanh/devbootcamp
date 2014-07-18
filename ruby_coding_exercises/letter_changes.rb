def LetterChanges(str)
  letters = ('a'..'z').to_a
  shifted_letters = letters.rotate(1)
  letter_pairs = Hash[letters.zip(shifted_letters)]

  str.split(//).each do |c|
    letter_pairs.each do |origin_let, shifted_let|
      if c == shifted_let

  return str

end

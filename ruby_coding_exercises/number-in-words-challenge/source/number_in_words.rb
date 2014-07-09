def in_words( number, string="" )

  return :invalid_number if number < 0 || number > 1_000_000_000
  return "zero" if number == 0 && string.empty?
  return string if number == 0

  one_to_ten  =  ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten' ]
  tens        =  [ 'ten', 'twenty ', 'thirty ', 'forty ', 'fifty ', 'sixty ', 'seventy ', 'eighty ', 'ninety ' ]
  teens       =  { 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen',
                  16 => 'sixteen', 17 => 'seventeen',18 => 'eighteen',19 => 'nineteen' }


  if number < 11
    return string += one_to_ten[ number - 1 ]
  end


  if teens.has_key?( number )
    return string += teens.fetch( number )
  end

  if number < 100
    index = number / 10
    string += tens[ index - 1 ]
    return in_words( number % 10, string )
  end

  if number < 1000
    string += "#{one_to_ten[ ( number / 100 ) - 1 ]} hundred "
    return in_words( number % 100, string )
  end

  if number <= 100_000 && number > 1000
    thousands_num = number * 100 / 100_000
    if number == 100_000
      return "one hundred thousand "
    end
    if thousands_num > 10 && thousands_num < 20
      string += "#{teens[ thousands_num ]} thousand "
    end
    if thousands_num >= 20
      string += "#{tens[ ( thousands_num / 10) - 1 ]}#{one_to_ten[ ( thousands_num % 10 ) -1 ]} thousand "
    end
    if thousands_num < 10
      string += "#{one_to_ten[ thousands_num - 1 ]} thousand "
    end
    return in_words( number % 1_000, string )
  end

  if number <= 1_000_000 && number > 100_000
    hundred_thousands_num = number * 100 / 1_000_000
    if number == 1_000_000
      return "one million"
    end

    if hundred_thousands_num > 10 && hundred_thousands_num < 20
      string += "#{teens[ hundred_thousands_num ]} hundred "
    end

    if hundred_thousands_num == 10
        string += "#{one_to_ten[ ( hundred_thousands_num / 10) - 1 ]} hundred thousand "
    end

    if hundred_thousands_num >= 20
      string += "#{one_to_ten[ ( hundred_thousands_num / 10) - 1 ]} hundred thousand "
    end
    if hundred_thousands_num < 10
      string += "#{one_to_ten[ hundred_thousands_num - 1 ]} hundred thousand "
    end
    return in_words( number % 100_000, string )
  end
end

p in_words(4)         # => "four"
p in_words(27)        # => "twenty seven"
p in_words(102)       # => "one hundred two"
p in_words(38_079)
p in_words(900_112)

class Book
  attr_reader :title
  def title=(title)

    @title = title.split.each_with_index.map do |w,i|
      case
        when i == 0 || !should_be_lower_case?(w)
          # Capitalize the first word and all subsequent non-special words
          w.capitalize
        else
          w
      end
    end.join(' ')
  end

  def should_be_lower_case?(word)
    articles_no_cap = %w(and in the of a an)
    articles_no_cap.include? (word)
  end

end


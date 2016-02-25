class QueryAnalyzer

  QUERY_KEYWORDS = [
    'where',
    'saan',
    'san',
    'eat',
    'place',
    'suggest',
    'suggestion'
  ]


  def analyze text
    @text_array = text.split(' ').map &:downcase
    first_word = @text_array[0]

    if first_word == 'help'
      :help
    elsif first_word == 'list'
      :list
    elsif first_word == 'add'
      :add
    elsif first_word == 'delete'
      :delete
    elsif self.text_has_valid_question_keyword?
      :ask
    else
      :invalid
    end
  end



  protected

  def text_has_valid_question_keyword?
    (@text_array & QUERY_KEYWORDS).any?
  end

end

class AskHandler

  def process params
    selected_eat = Eat.random_eat

    "#{random_response} " \
      "#{selected_eat.place} as suggested by #{selected_eat.added_by}."
  end



  private

  def random_response
    RESPONSES[rand(RESPONSES.length)]
  end

end

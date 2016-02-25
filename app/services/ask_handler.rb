class AskHandler

  def process params
    return if Eat.count == 0

    selected_eat = Eat.random_eat

    "#{random_response} " \
      "#{selected_eat} as suggested by #{selected_eat.user}."
  end



  private

  def random_response
    RESPONSES[rand(RESPONSES.length)]
  end

end

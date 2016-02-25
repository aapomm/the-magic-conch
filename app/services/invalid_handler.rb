class InvalidHandler

  def process params
    random_invalid_response
  end



  private

  def random_invalid_response
    INVALID_RESPONSES[rand(INVALID_RESPONSES.length)]
  end

end

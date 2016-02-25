class AddHandler

  def process params
    restaurant = params[:text].sub(/^([\w]+)/, '').strip

    Eat.create :place => restaurant,
      :slack_user_id => params[:user_id],
      :added_by => params[:user_name]

    "*#{restaurant}* successfully added to the list!"
  end

end

class DeleteHandler

  def process params
    id = params[:text].sub(/^([\w]+)/, '').strip.to_i

    eat = Eat.find_by_id id

    if eat
      eat.destroy
      return "#{eat} [#{eat.user}] successfully deleted."
    else
      return "Deletion failed."
    end
  end

end

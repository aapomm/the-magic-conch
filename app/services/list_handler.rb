class ListHandler

  def process params
    Eat.all.map do |eat|
      "#{eat.id}- #{eat} [#{eat.user}]"
    end.join("\n")
  end

end

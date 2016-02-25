class ListHandler

  def process params
    Eat.all.map do |eat|
      "#{eat.id}- #{eat.place} [#{eat.added_by}]"
    end.join("\n")
  end

end

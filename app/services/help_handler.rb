class HelpHandler

  def process params
    "List of available actions:\n" \
      "- `list` \n" \
      "- `add [restaurant]`\n" \
      "- `delete [id]`\n" \
      "- `where` \n" \
      "- `help`"
  end

end

class HandlerFactory

  def build type = nil
    @type = type
    self.get_handler_class
  end



  protected

  def get_handler_class
    case @type
    when  :help
      HelpHandler
    when  :list
      ListHandler
    when  :add
      AddHandler
    when  :delete
      DeleteHandler
    when  :ask
      AskHandler
    when :invalid
      InvalidHandler
    else
      raise 'Unspecified handler type!'
    end
  end

end

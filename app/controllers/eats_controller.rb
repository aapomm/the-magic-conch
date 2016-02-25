class EatsController < ApplicationController

  def root
    action = QueryAnalyzer.new.analyze(params[:text])
    response = ::HandlerFactory.new.build(action).new.process params

    if response
      render :json => {:text => response}
    end
  end

end

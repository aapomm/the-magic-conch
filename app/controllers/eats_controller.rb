class EatsController < ApplicationController

  def root
    puts params

    return if params[:token] != ENV['SLACK_TOKEN']

    action = QueryAnalyzer.new.analyze(pure_text(params))
    response = ::HandlerFactory.new.build(action).new.process params

    if response
      render :json => {:text => response}
    end
  end



  private

  def pure_text params
    params[:text].sub params[:trigger_word], ''
  end

end

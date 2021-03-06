class EatsController < ApplicationController

  def root
    puts params

    return if params[:token] != ENV['SLACK_TOKEN']

    clean_text params

    action = QueryAnalyzer.new.analyze params[:text]
    response = ::HandlerFactory.new.build(action).new.process params

    if response
      render :json => {:text => response}
    end
  end



  private

  def clean_text params
    params[:text].sub! params[:trigger_word] + ' ', ''
  end

end

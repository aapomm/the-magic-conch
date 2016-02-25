class EatsController < ApplicationController

  def root
    puts "params: #{params}"

    return if params[:token] != ENV['SLACK_TOKEN']

    action = QueryAnalyzer.new.analyze(params[:text])
    response = ::HandlerFactory.new.build(action).new.process params

    if response
      render :json => {:text => response}
    end
  end

end

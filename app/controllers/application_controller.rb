require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    @quote ||= QuoteService.get_quote
    erb :'/landing_page/index'
  end
end

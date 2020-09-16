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

  get '/projects/solarizer' do
    erb :'/projects/solarizer/show'
  end

  get '/projects/jam-session' do
    erb :'/projects/jam-session/show'
  end

  get '/projects/garden-that' do
    erb :'/projects/garden-that/show'
  end
end

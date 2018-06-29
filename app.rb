require 'sinatra'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end


  post '/names' do
  session[:player_1_name] = params[:player_1_name]
  session[:player_2_name] = params[:player_2_name]
  # session[:player_2_points] = params[:player_2_points]
  redirect '/play'
end


  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    # @player_2_points = session[:player_2_points]
    erb :play
  end

  get '/attack' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :attack
  end

end

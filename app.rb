require_relative 'config/environment'
require_relative "models/piglatinizer.rb"

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input 
  end 
  
  # post '/piglatinize' do
  #   @user_phrase = params[:user_text]
  #   erb :piglatinize
  # end 
  post '/piglatinize' do
    @user_input = params["user_phrase"]
    @p = Piglatinizer.new 
    erb :piglatinize
  end
end

# <% pl_init = PigLatinizer.new %>

# <h2>Thing: <%= pl_init.piglatinize(@user_phrase) %></h2>
end 
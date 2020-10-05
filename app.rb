require_relative 'config/environment'
require_relative "models/piglatinizer.rb"

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input 
  end 
  
  post '/piglatinize' do
    # # piglatinize
    # input = params[:user_phrase]
    # instance = PigLatinizer.new
    # @piglatin = instance.piglatinize(input)
    # erb :results
    @pigify_text = PigLatinizer.new(params[:phrase])
    erb :piglatinized
  end


end 
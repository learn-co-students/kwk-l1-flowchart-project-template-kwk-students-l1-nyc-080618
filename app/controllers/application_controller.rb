class ApplicationController < Sinatra::Base
    configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get '/' do
    erb :main
  end
  
  post '/result' do
    puts @params
    @categories = @params[:category]
    puts @params[:category]
    erb :results
  end
  

end







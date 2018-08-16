class ApplicationController < Sinatra::Base
    configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  get '/' do
    erb :quiz
  end
  
  post '/results' do
    puts @params[:category]
    
 erb :results
  end
 



end




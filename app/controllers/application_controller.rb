class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get '/about' do
    erb :about
  end
  
  get '/action' do 
    erb :action
  end
  
  get '/inspiration' do 
    erb :inspiration
  end
  
  get '/resources' do 
    erb :resources
  end
  
  
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

end

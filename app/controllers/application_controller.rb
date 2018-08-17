class ApplicationController < Sinatra::Base
  get '/' do
    "Hello World"
  end


  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

end

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
  
# =======
  #   puts "/"
  #   erb :layout
  # end
  
  # post '/result' do
    # puts @params
    # @categories = @params[:category]
    # puts @params[:category]
  #   erb :results
  # end
  
# >>>>>>> ae1917fa019fe183e8b3a77b856404fb8c81f81e

end







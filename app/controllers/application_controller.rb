class ApplicationController < Sinatra::Base
  
  APP_ROOT = File.expand_path("..", __dir__)
  
  configure do
    set :public_folder, File.join(APP_ROOT, "app", "public")
    set :views, 'app/views'
  end
  
  get '/' do
    erb :home
  end
  
  get '/about_us' do
    erb :about_us
  end

  get '/developers' do
    erb :developers
  end
  
  get '/artist' do
    @genre= params[:genre]
    artists = Artist.new.all
    @artist = Artist.new.select_artist(artists, @genre)
    erb :artist
  end
  
 
end


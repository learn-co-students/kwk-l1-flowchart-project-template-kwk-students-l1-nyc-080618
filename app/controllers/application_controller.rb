class ApplicationController < Sinatra::Base
  
  configure do
    set :public_folder, "public"
    set :views, "app/views"
  end 
  
  get '/' do
    erb :index
  end
  
get '/front_page' do
    erb :front_page
  end
  

post "/begin" do 
    erb :begin
end

  post  "/a" do 
    erb :a
end

post  "/b" do 
    erb :b
end

post  "/aa" do 
  erb :aa
end

post "/ab" do
  erb :ab
end

post "/aaa" do
  erb :aaa
end

post "/aaa_end" do
  erb :aaa_end
end

post "/aab" do
  erb :aab
end

post "/aab_end" do
  erb :aab_end
end

post  "/one_b" do 
    erb :one_b
end

post  "/ab" do 
    erb :ab
end

post  "/aba" do 
    erb :aba
end

post  "/abaa" do 
    erb :abaa
end

post  "/abab" do 
    erb :abab
end

post  "/abb" do 
    erb :abb
end


end 




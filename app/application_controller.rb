class ApplicationController < Sinatra::Base

get "/" do 
   erb :index
  end

get "/type_of_clothes" do
  erb :type_of_clothes
end

get '/dressy_price' do 
  erb :dressy_price
end

get '/casual_price' do 
  erb :casual_price
end 

get '/sportswear_price' do 
  erb :sportswear_price
end

get '/dressy1' do 
  erb :dressy1
end 

get '/dressy2' do 
  erb :dressy2
end 

get '/dressy3' do 
  erb :dressy3
end 

get '/casual1' do 
  erb :casual1
end 

get '/casual2' do 
  erb :casual2
end 

get '/casual3' do 
  erb :casual3
end 


get '/sportswear1' do 
  erb :sportswear1
end 

get '/sportswear2' do 
  erb :sportswear2
end 

get '/sportswear3' do 
  erb :sportswear3
end 
end 
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get "/" do
    erb :index
  end
  
  get "/help" do
    erb :help
  end
  
  get "/about" do
    erb :about
  end
  
  get '/result' do
    @zipcode = params[:zipcode]
    @locations =
      {
        'central harlem' => ["http://www.harlemgrown.org/", "https://www.harlemonestop.com/organization/1310/harlem-dowling-west-side-center-for-children-and-family-services", "http://www.coalitionforthehomeless.org/resources/salvation-army-east-harlem-community-center/"],
        'chelsea' => ["https://www.foodpantries.org/ci/ny-chelsea", "https://www.volunteermatch.org/search/opp2427690.jsp", "https://volunteermatch.networkforgood.com/?code=Footer"],
        'gramercy park/murry hill' => ['https://www.foodbanknyc.org/donate-food/','http://www.foodbanknyc.org/volunteer/', 'https://secure3.convio.net/fbnyc/site/Donation2?df_id=7464&mfc_pref=T&7464.donation=form1&_ga=2.210780370.694228225.1534401644-1055037965.1534401644'],
        'soho greenwich' => ['https://www.cityharvest.org/programs/donate-food/','https://www.sohostudiosmiami.com/our-blog/2017/9/27/how-to-create-an-event-that-helps-support-disaster-relief', 'https://giving.cityharvest.org/donate-now'],
        'lower manhattan' => ['https://www.homelessshelterdirectory.org/cgi-bin/id/cityfoodbanks.cgi?city=Manhattan&state=NY','https://www.nycservice.org/search/','https://donatenow.networkforgood.org/nycmedics'],
        'upper east side' => ['https://www.foodbanknyc.org/donate-food/','https://www1.nyc.gov/site/em/volunteer/nyc-cert.page','https://secure3.convio.net/fbnyc/site/Donation2?df_id=5844&mfc_pref=T&5844.donation=form1&recurring=1&_ga=2.47253479.1983913834.1534424903-118813911.1534424903'],
      }
    erb :result
  end

end

require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root 
    end

    get '/new' do
      erb :"pirates/new"
    end
    
    post '/pirates' do
      
    @pirates = Pirate.new(params[:pirate])
    params[:name][:weight][:height].each do |details|
      Ship.new(details)  
    end
 
  @courses = Course.all
 
  erb :student
    
  end
end

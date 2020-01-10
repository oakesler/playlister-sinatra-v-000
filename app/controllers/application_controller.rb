class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  enable :sessions
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end
  
  #get '/songs' do
    #@songs = Song.all
    #erb :songs
  #end
  
  get '/genres' do
    @genres = Genre.all
    erb :genres
  end
  
  get '/artists' do
    @artists = Artist.all
    erb :artists
  end
  
  get '/artists/:slug' do
    binding.pry
    @item = self.find_by_slug
  end
  
  get '/artists/:slug' do 
    ###
  end
  
  get '/artists/:slug' do 
    ###
  end
  
  
  
end

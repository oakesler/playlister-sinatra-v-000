class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  enable :sessions
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end
  
  get '/songs' do
    @songs = Song.all
    erb :songs
  end
  
  get '/genres' do
    @genres = Genre.all
    erb :genres
  end
  
  get '/artists' do
    @artists = Artist.all
    erb :artists
  end
  
  get "/songs/new" do
    erb :new
  end
  
  post "/songs" do
    binding.pry
    @song = Song.new(name: params[song_name])
    redirect to "/songs/#{@song.name.slug}"
  end
  
  get '/songs/:slug' do
    #binding.pry
    @song = Song.find_by_slug()
    @recipe = Recipe.find_by_id(params[:id])
    erb :show
  end
    
  
  #get '/artists/:slug' do
    #binding.pry
    #@item = self.find_by_slug
    #erb :show
  #end
  
  #get '/artists/:slug' do 
    ###
  #end
  
  #get '/artists/:slug' do 
    ###
  #end
end

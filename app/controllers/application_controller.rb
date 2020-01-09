class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
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
    erb :genres
  end
  
  get '/artists' do
    erb :artists
  end
  
  get '/songs/:slug' do
    erb :"songs/:slug"
  end
  
  get '/artists/:slug'
    erb :"artists/:slug"
  end
  
  get '/genres/:slug'
    erb :"genres/:slug"
  end
end
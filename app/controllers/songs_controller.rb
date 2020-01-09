class SongsController < ApplicationController
  get '/songs' do
    @songs = Song.all
    erb :songs
  end
  
  get '/artists/:slug' do 
    ###
  end
end

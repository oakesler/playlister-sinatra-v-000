class SongsController < ApplicationController
  get '/songs' do
    @songs = Song.all
    erb :songs
  end
  
  get '/artists/:slug' do 
    @item = self.find_by_slug
    erb :show
  end
end

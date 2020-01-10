class SongsController < ApplicationController
  get '/songs' do
    #binding.pry
    @songs = Song.all
    erb :songs
  end
end
  
  #get '/artists/:slug' do 
    #@item = self.find_by_slug
    #erb :show
  #end
#end

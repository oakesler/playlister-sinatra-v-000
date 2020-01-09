class GenresController < ApplicationController
 get '/genres' do
    @genres = Genre.all
    erb :genres
  end
  
  get '/artists/:slug' do 
    ###
  end
end
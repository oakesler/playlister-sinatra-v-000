class GenresController < ApplicationController
 get '/genres' do
    @genres = Genre.all
    erb :genres
  end
  
  get '/artists/:slug' do 
    @item = self.find_by_slug
    erb :show
  end
end
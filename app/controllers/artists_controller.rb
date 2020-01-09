class ArtistsController < ApplicationController
  get '/genres' do
    @artists = Artist.all 
    artists.genres
end

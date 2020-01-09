require_relative "../models/concerns/slugifiable.rb"
require_relative '../../config/environment'

class ArtistsController < ApplicationController
  get '/artists' do
    @artists = Artist.all
    erb :artists
  end
  
  get '/artists/:slug' do
    @item = self.find_by_slug
    erb :show
  end
end


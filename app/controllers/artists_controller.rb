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

Failure/Error: expect(page).to have_css("a[href='/songs/#{@song.slug}']")
       expected #has_css?("a[href='/songs/that-onewith the guitar']") to returntrue, got false


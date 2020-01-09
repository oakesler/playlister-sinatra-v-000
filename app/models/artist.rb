require_relative "../models/concerns/slugifiable.rb"
require_relative '../../config/environment'

class Artist < ActiveRecord::Base
  include Slugifiable::InstanceMethods
  extend Slugifiable::ClassMethods
  
  has_many :songs
  has_many :genres, through: :songs
end

#class Artist < ActiveRecord::Base
  #has_many :songs
  #has_many :genres, :through => :songs
#end

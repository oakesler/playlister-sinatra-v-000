module Slugifiable
#module Slugifiable < Sinatra::Base
  #class Slugifiable::Artist
    def slug
      name = self.name.sub(/\s/, "-")
      slug = name.sub(/[^\w-]+/, "").downcase
    end
  
    def find_by_slug(slug)
      name = name.sub("/\s/", "-")
      slug = name.delete(/\W/)
    end
  end
#end
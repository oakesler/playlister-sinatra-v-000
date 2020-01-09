module Slugifiable
#module Slugifiable < Sinatra::Base
  def slug
    binding.pry
    name = self.name.sub(/\s/, "-")
    slug = name.sub(/[^\w-]+/, "")
  end

  def find_by_slug
    #name = name.sub("/\s/", "-")
    #slug = name.delete(/\W/)
  end
end
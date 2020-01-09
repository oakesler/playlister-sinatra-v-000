module Slugifiable
  
  module InstanceMethods
    def slug
      name = self.name.sub(/\s/, "-")
      slug = name.sub(/[^\w-]+/, "").downcase
    end
  end
  
  module ClassMethods
    def find_by_slug(slug)
      #binding.pry
      final = []
      name = slug.sub(/\W/, " ").split(" ")
      name.each do |item|
        final << item.capitalize
      end
    self.all.find_by(name:"#{final.join(" ")}")
  end
  end
end
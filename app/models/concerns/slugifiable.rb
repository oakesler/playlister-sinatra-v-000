def slug(name)
  name = name.sub("/\s/", "-")
  slug = name.delete(/\W/)
end

def find_by_slug(slug)
  name = name.sub("/\s/", "-")
  slug = name.delete(/\W/)
end
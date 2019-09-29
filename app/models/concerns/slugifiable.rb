module Slugifiable

  module ClassMethods

    def find_by_slug(slug)
      unslugged = slug.split("-").collect{|name| name.capitalize}.join(" ")
      ret = self.find_by(name: unslugged)
    end

  end

  module InstanceMethods

    def slug
      self.name.split(" ").collect{|name| name.downcase}.join("-")
    end

  end

end

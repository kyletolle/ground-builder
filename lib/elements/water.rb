require_relative 'element'

class Elements
  class Water < Element
    def self.abbr
      self.name[0].capitalize
    end
  end
end


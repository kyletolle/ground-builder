require_relative 'element'

class Elements
  class Soil < Element
    def self.abbr
      self.name[0..1].capitalize
    end
  end
end


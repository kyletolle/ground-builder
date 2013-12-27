require_relative 'element'

class Elements
  class Stone < Element
    def self.abbr
      self.name[0..1].capitalize
    end
  end
end


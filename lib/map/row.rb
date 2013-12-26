require_relative 'column'

class Map
  class Row
    def initialize(width)
      @width = width
    end

    def generate
      @column ||= Column.new(@width).generate
    end
  end
end


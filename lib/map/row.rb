require_relative 'column'

class Map
  class Row
    def initialize(width)
      @width = width

      generate
    end

    def generate
      @column ||= Column.new(@width)
    end

    def to_s
      "| #{@column.to_s} |"
    end
  end
end


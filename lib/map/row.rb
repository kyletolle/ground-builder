require_relative 'column'

class Map
  class Row
    def initialize(width)
      @width = width

      generate
    end

    def to_s
      "| #{@column.to_s} |"
    end

    def [](index)
      @column[index]
    end

    def each(&block)
      @column.each(&block)
    end

    def contains?(point)

      return !!@column.index(point)
    end

    def column_for(point)

    end

  private
    def generate
      @column ||= Column.new(@width)
    end
  end
end


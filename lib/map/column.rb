require_relative '../point'

class Map
  class Column
    def initialize(width)
      @width = width

      generate
    end

    def generate
      @points ||= [].tap do |a|
        @width.times do
          a << Point.new
        end
      end
    end

    def to_s
      @points.map(&:to_s).join(" | ")
    end
  end
end


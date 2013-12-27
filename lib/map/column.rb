require_relative '../point'

class Map
  class Column
    def initialize(width)
      @width = width

      generate
    end

    def generate
      @array ||= [].tap do |a|
        @width.times do
          a << Point.new
        end
      end
    end

    def to_s
      @array.map(&:to_s).join(" | ")
    end
  end
end


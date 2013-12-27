require_relative '../point'

class Map
  class Column
    def initialize(width)
      @width = width
    end

    def generate
      @array ||= [].tap do |a|
        @width.times do
          a << Point.new
        end
      end
    end
  end
end


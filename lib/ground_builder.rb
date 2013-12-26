require 'pp'
require_relative 'ground'
require_relative 'elements'
require_relative 'point'

class Map
  def initialize(width, height)
    @width = width
    @height = height

    generate
  end

  def generate
    @array ||= [].tap do |a|
      @height.times do
        a << Row.new(@width).generate
      end
    end
  end

  class Row
    def initialize(width)
      @width = width
    end

    def generate
      @column ||= Column.new(@width).generate
    end
  end

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
  end
end

class GroundBuilder
  def initialize
    @width = Ground::Sizes::X
    @height = Ground::Sizes::Y
  end

  def map
    @map ||= Map.new(@width, @height)
  end
end

puts "THE MAP"
puts "----------------"
pp GroundBuilder.new.map


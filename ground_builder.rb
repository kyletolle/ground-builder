require 'pp'

class Elements
  include Enumerable

  class Element; end
  class Water < Element; end
  class Soil < Element; end
  class Stone < Element; end

  def self.each(&block)
    ELEMENTS.each do |element|
      if block_given?
        block.call element
      else
        yield element
      end
    end
  end

private
  ELEMENTS = [ Water, Soil, Stone ]
end


module Ground
  module Sizes
    X = 2
    Y = 2
  end
end

class Point
  attr_reader :affinities

  def initialize
    @affinities = Affinities.new
  end

  def to_s
    @affinities.map do |key, affinity|
      affinity.to_s
    end.join(";")
  end
end

class Affinities
  include Enumerable

  def initialize
    @hash ||= Affinities::Generator.new.generate
  end

  def each(&block)
    @hash.each do |affinity|
      if block_given?
        block.call affinity
      else
        yield affinity
      end
    end
  end

  class Generator
    def generate
      {}.tap do |hash|
        remaining_weight_max = 1.0
        Elements.each do |element|
          sym = element.to_s.downcase.to_sym
          weight = WeightGenerator.new(remaining_weight_max).weight
          hash[sym] = Affinity.new(element, weight)
          remaining_weight_max -= weight
        end
      end
    end

    class WeightGenerator
      def initialize(max)
        @max = max
      end

      def weight
        Random.new.rand(@max)
      end
    end
  end
end

class Affinity
  attr_reader :element, :weight

  def initialize(element, weight)
    @element = element
    @weight = weight
  end

  def to_s
    "#{@element}: #{@weight}"
  end
end

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


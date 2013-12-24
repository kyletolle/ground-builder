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
end

class Affinities
  include Enumerable

  def initialize
    @hash ||= Affinities::Generator.new.generate
  end

  def self.each(&block)
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
end

class GroundBuilder
  def initialize
    @x = Ground::Sizes::X
    @y = Ground::Sizes::Y
  end

  def map
    @map ||= [].tap do |array|
      @x.times do
        array << [].tap do |row|
          @y.times do
            row << Point.new
          end
        end
      end
    end
  end
end

puts "THE MAP"
puts "----------------"
pp GroundBuilder.new.map

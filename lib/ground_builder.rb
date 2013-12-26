require 'pp'
require_relative 'ground'
require_relative 'elements'
require_relative 'map'

class GroundBuilder
  def initialize(width, height)
    @width = width
    @height = height
  end

  def map
    @map ||= Map.new(@width, @height)
  end
end

puts "THE MAP"
puts "----------------"

width = Ground::Sizes::X
height = Ground::Sizes::Y

pp GroundBuilder.new(width, height).map


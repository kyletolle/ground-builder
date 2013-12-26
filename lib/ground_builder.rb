require 'pp'
require_relative 'ground'
require_relative 'elements'
require_relative 'map'

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


require 'pp'
require_relative 'lib/ground_builder'

puts "THE MAP"
puts "----------------"

width = Ground::Sizes::X
height = Ground::Sizes::Y

pp GroundBuilder.new(width, height).map


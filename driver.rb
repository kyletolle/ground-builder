require 'pp'
require_relative 'lib/ground_builder'

puts "THE MAP"
puts "="*26
puts

width = Ground::Sizes::X
height = Ground::Sizes::Y

ground_builder = GroundBuilder.new(width, height).build
puts ground_builder.map.to_s


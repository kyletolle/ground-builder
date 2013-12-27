require 'pp'
require_relative 'lib/ground_builder'

puts "THE MAP"
puts "="*26
puts 

width = Ground::Sizes::X
height = Ground::Sizes::Y

puts GroundBuilder.new(width, height).map.to_s


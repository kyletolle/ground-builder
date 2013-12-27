require_relative 'affinities'

class Point
  attr_reader :affinities

  def initialize
    @affinities = Affinities.new
  end
end


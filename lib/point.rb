require_relative 'affinities'

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


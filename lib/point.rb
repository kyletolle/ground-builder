require_relative 'affinities'

class Point
  attr_reader :affinities

  def initialize
    @affinities = Affinities.new
  end

  def to_s
    @affinities.collect do |key, affinity|
      formatted_weight = '%.2f' % affinity.weight
      "#{affinity.element.abbr}:#{formatted_weight}"
    end.join(";")
  end
end


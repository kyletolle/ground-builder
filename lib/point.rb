require_relative 'affinity'

class Point
  attr_reader :affinity

  def initialize
    random_index = rand(0...Elements.all.count)
    @affinity = Affinity.new(Elements.all[random_index], 1.0)
  end

  def to_s
    formatted_weight = '%.2f' % affinity.weight
    "#{affinity.element.abbr}:#{formatted_weight}".rjust(7, " ")
  end
  end
end


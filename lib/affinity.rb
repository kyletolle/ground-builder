class Affinity
  attr_reader :element, :weight

  def initialize(element, weight)
    @element = element
    @weight = weight
  end

  def to_s
    "#{@element.name}: #{@weight}"
  end
end


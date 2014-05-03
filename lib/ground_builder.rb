require_relative 'ground'
require_relative 'map'
require_relative 'lifecycle'
require_relative 'dropper'
require_relative 'settler'

class GroundBuilder
  ITERATIONS = 5

  def initialize(width, height)
    @width = width
    @height = height
  end

  def map
    @map ||= Map.new(@width, @height)
  end

  def build
    dropper_class = Dropper
    settler_class = Settler
    Lifecycle.new(map, dropper_class, settler_class, ITERATIONS).live
    self
  end
end


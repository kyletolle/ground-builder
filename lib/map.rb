class Map
  require_relative 'map/row'

  def initialize(width, height)
    @width = width
    @height = height
  end

  def generate
    @array ||= [].tap do |a|
      @height.times do
        a << Row.new(@width).generate
      end
    end
  end
end


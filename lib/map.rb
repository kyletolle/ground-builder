class Map
  require_relative 'map/row'

  def initialize(width, height)
    @width = width
    @height = height

    generate
  end

  def generate
    @array ||= [].tap do |a|
      @height.times do
        a << Row.new(@width)
      end
    end
  end

  def to_s
    @array.each(&:to_s).join("\n")
  end
end


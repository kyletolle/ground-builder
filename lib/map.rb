class Map
  require_relative 'map/row'

  attr_reader :width, :height

  def initialize(width, height)
    @width = width
    @height = height

    generate
  end

  def generate
    @rows ||= [].tap do |a|
      @height.times do
        a << Row.new(@width)
      end
    end
  end

  def count
    @width * @height
  end

  def to_s
    @rows.each(&:to_s).join("\n")
  end

  def at(row, column)
    @rows[row][column]
  end
end


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

  def each(&block)
    traverser = lambda do |obj|
      if obj.respond_to?(:each)
        obj.each(&traverser)
      else
        block.call obj
      end
    end

    traverser.call(@rows)
  end

  def random_neighbor_for(point)
    row_index = nil

    @rows.select.with_index do |row, index|
      row_index = index if row.contains?(point)
    end


    points = self.select do |point|

    end
  end
end


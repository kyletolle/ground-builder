class Elements
  require_relative 'elements/water'
  require_relative 'elements/soil'
  require_relative 'elements/stone'

  include Enumerable

  def self.each(&block)
    ELEMENTS.each do |element|
      if block_given?
        block.call element
      else
        yield element
      end
    end
  end

private
  ELEMENTS = [ Water, Soil, Stone ]
end


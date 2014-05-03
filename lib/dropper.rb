require_relative 'elements'

class Dropper
  def initialize(map)
    @map = map
  end

  def drop
    number_of_bits_to_drop = rand(1..@map.count)

    coordinates_of_bits_to_drop = []
    number_of_bits_to_drop.times do
      def generate_unique_bit_coordinates(coordinates_of_bits_to_drop)
        def random_bit_coordinates
          [rand(0...@map.height), rand(0...@map.width)]
        end

        def coordinates_of_bits_are_unique?(existing_coords, coord)
          existing_coords.empty? || !existing_coords.include?(coord)
        end

        begin
          coordinates_of_bit = random_bit_coordinates
        end until coordinates_of_bits_are_unique?(coordinates_of_bits_to_drop, coordinates_of_bit)

        coordinates_of_bit
      end

      coordinates_of_bit = generate_unique_bit_coordinates(coordinates_of_bits_to_drop)

      coordinates_of_bits_to_drop << coordinates_of_bit
    end

    coordinates_of_bits_to_drop.each do |bit|
      element_to_drop = Elements.all[rand(1...Elements.all.count)]
      @map.at(bit[0], bit[1]).drop(element_to_drop)
    end
  end
end


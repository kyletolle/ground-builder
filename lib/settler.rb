class Settler
  def initialize(map)
    self.map = map
  end

  #TODO
  def settle
    moved_an_element = false

    loop do
      #TODO: Should we shed all the elements at once? I think we have to,
      #otherwise, we're not going to be completely settled after the end of
      #each drop.
      map.each do |point|
        if point.wants_to_shed_bits?
          point.bits_to_shed do |bit|
            #TODO: Shed the bit to a random neighbor
            neighbor = map.random_neighbor_for point
            point.shed_element_to neighbor
          end

          moved_an_element = true
        end
      end
    end until !moved_an_element
  end

private
  attr_accessor :map
end


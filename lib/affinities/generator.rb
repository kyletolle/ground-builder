require_relative '../affinity'

class Affinities
  class Generator
    def generate
      {}.tap do |hash|
        remaining_weight_max = 1.0
        Elements.each do |element|
          sym = element.to_s.downcase.to_sym
          weight = WeightGenerator.new(remaining_weight_max).weight
          hash[sym] = Affinity.new(element, weight)
          remaining_weight_max -= weight
        end
      end
    end

    class WeightGenerator
      def initialize(max)
        @max = max
      end

      def weight
        Random.new.rand(@max)
      end
    end
  end
end

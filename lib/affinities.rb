class Affinities
  include Enumerable

  require_relative 'affinities/generator'

  def initialize
    @hash ||= Affinities::Generator.new.generate
  end

  def each(&block)
    @hash.each do |affinity|
      if block_given?
        block.call affinity
      else
        yield affinity
      end
    end
  end
end


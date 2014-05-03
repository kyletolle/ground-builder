class Lifecycle
  def initialize(map, dropper_class, settler_class, iterations)
    @map = map
    @dropper = dropper_class.new(@map)
    @settler = settler_class.new(@map)
    @iterations = iterations
  end

  def live
    @iterations.times do
      @dropper.drop
      @settler.settle
    end
  end
end

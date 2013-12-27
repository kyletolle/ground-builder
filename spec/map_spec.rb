require 'spec_helper'

describe Map do
  describe "#generate" do
    let(:width)  { 2 }
    let(:height) { 4 }

    it "should have all the rows and columns given" do
      map = Map.new(width, height).generate
      map.select{|row| row.count == width}.count.should == height
    end
  end
end


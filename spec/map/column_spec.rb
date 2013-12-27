require 'spec_helper'

describe Map::Column do
  describe "#generate" do
    let(:width) { 6 }

    it "has the right number of points" do
      column = Map::Column.new(width).generate
      column.select{|col| col.class == Point}.count.should == width
    end
  end
end

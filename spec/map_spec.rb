require 'spec_helper'

describe Map do
  describe "#generate" do
    let(:width)  { 2 }
    let(:height) { 4 }

    it "has all the rows and columns given" do
      map = Map.new(width, height).generate
      expect(map.select{|row| row.count == width}.count).to eq height
    end
  end
end


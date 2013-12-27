require 'spec_helper'

describe Map::Row do
  let(:width) { 2 }

  describe "#generate" do
    it "has all the columns" do
      row = Map::Row.new(width).generate
      expect(row.count).to eq width
    end
  end
end


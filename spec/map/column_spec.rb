require 'spec_helper'

describe Map::Column do
  let(:width) { 2 }

  subject { described_class.new(width) }

  describe "#generate" do

    it "has the right number of points" do
      expect(subject.generate.select{|col| col.class == Point}.count).
        to eq width
    end
  end

  describe "to_s" do
    it "has the right format" do
      map_regex = /^.* | .*$/
      expect(subject.to_s).to match(map_regex)
    end
  end
end


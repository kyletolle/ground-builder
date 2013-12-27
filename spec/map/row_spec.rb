require 'spec_helper'

describe Map::Row do
  let(:width) { 2 }

  subject { Map::Row.new(width) }

  describe "#generate" do
    it "has all the columns" do
      expect(subject.count).to eq width
    end
  end

  describe "#to_s" do
    it "has the right format" do
      map_regex = /^\| W:(\d\.\d\d);So:(\d\.\d\d);St:(\d\.\d\d) | W:(\d\.\d\d);So:(\d\.\d\d);St:(\d\.\d\d) \|$/
      expect(subject.to_s).to match(map_regex)
    end
  end
end


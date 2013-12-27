require 'spec_helper'

describe GroundBuilder do
  let(:width) { 1 }
  let(:height) { 1 }

  subject { described_class.new(width, height) }

  describe "#map" do
    it "is a Map" do
      expect(subject.map).to be_a Map
    end
  end
end


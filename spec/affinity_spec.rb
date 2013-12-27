require 'spec_helper'

describe Affinity do
  subject { described_class.new(Elements::Water, 1.0) }

  it "responds to #element" do
    expect(subject).to respond_to :element
  end

  it "responds to #weight" do
    expect(subject).to respond_to :weight
  end

  describe "#to_s" do
    it "is in the right format" do
      expect(subject.to_s). to eq "water: 1.0"
    end
  end
end


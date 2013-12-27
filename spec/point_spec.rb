require 'spec_helper'

describe Point do
  describe "#affinities" do
    it "is an Affinities class" do
      expect(described_class.new.affinities).to be_a Affinities
    end
  end
end


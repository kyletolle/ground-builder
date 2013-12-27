require 'spec_helper'

describe Elements::Water do
  describe "#name" do
    it "is water" do
      expect(described_class.name).to eq :water
    end
  end

  describe "#abbr" do
    it "is W" do
      expect(described_class.abbr).to eq "W"
    end
  end
end


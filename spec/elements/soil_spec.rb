require 'spec_helper'

describe Elements::Soil do
  describe "#name" do
    it "is soil" do
      expect(described_class.name).to eq :soil
    end
  end

  describe "#abbr" do
    it "is So" do
      expect(described_class.abbr).to eq "So"
    end
  end
end


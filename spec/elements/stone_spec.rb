require 'spec_helper'

describe Elements::Stone do
  describe "#name" do
    it "is stone" do
      expect(described_class.name).to eq :stone
    end
  end

  describe "#abbr" do
    it "is St" do
      expect(described_class.abbr).to eq "St"
    end
  end
end


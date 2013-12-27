require 'spec_helper'

describe Elements::Soil do
  describe "#name" do
    it "is soil" do
      expect(described_class.name).to eq :soil
    end
  end
end


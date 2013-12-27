require 'spec_helper'

describe Elements::Stone do
  describe "#name" do
    it "is stone" do
      expect(described_class.name).to eq :stone
    end
  end
end


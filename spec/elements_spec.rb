require 'spec_helper'

describe Elements do

  it "responds to #all" do
    expect(described_class).to respond_to :all
  end

  describe "#each" do
    it "has returns all the elements" do
      Elements.each do |element|
        expect(Elements.all).to include element
      end
    end
  end
end

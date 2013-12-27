require 'spec_helper'

describe Affinities do
  it { should respond_to :each }

  it "has an affinity for each element" do
    elements = Elements.all
    Affinities.new.each do |key, affinity|
      elements.delete affinity.element
    end

    expect(elements.count).to eq 0
  end
end


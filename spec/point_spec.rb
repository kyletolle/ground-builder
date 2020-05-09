require 'spec_helper'

describe Point do
  subject { described_class.new }

  describe "#affinity" do
    it { should respond_to :affinity }
  end

  describe "#bits" do
    it { should respond_to :bits }
  end
end


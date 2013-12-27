require 'spec_helper'

describe Point do
  describe "#affinities" do
    it "is an Affinities class" do
      expect(subject.affinities).to be_a Affinities
    end
  end

  describe "to_s" do
    it "has the right format" do
      point_regex = /^W\:(\d\.\d\d);So:(\d\.\d\d);St:(\d\.\d\d)$/
      expect(subject.to_s).to match(point_regex)
    end
  end
end


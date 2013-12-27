require 'spec_helper'

describe Map do
  let(:width)  { 2 }
  let(:height) { 2 }

  subject{ Map.new(width, height) }

  describe "#generate" do
    it "has all the rows and columns given" do
      rows_with_all_columns = subject.generate.
        select{|row| row.count == width }

      expect(rows_with_all_columns.count).to eq height
    end
  end

  describe "to_s" do
    it "has the right format" do
      map_regex = /^\| .* | .* \|\n\| .* | .* \|$/
      expect(subject.to_s).to match(map_regex)
    end
  end
end


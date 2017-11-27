require 'rspec'
require_relative 'series'

describe Series do
  describe "#slices" do
    let(:series_1) { Series.new('012345') }
    let(:series_2) { Series.new('345678') }

    context "slices of one" do
      it "should return array of single digits" do
        expect(series_1.slices(1)).to eq [[0], [1], [2], [3], [4], [5]]
        expect(series_2.slices(1)).to eq [[3], [4], [5], [6], [7], [8]]        
      end
    end

    context "slices of two" do
      it "should return array of two digits" do
        expect(series_1.slices(2)).to eq [[0, 1], [1, 2], [2, 3], [3, 4], [4, 5]]
        expect(series_2.slices(2)).to eq [[3, 4], [4, 5], [5, 6], [6, 7], [7, 8]]        
      end
    end

    context "slices of three" do
      it "should return array of three digits" do
        expect(series_1.slices(3)).to eq [[0, 1, 2], [1, 2, 3], [2, 3, 4], [3, 4, 5]]
        expect(series_2.slices(3)).to eq [[3, 4, 5], [4, 5, 6], [5, 6, 7], [6, 7, 8]]      
      end
    end

    context "slices of four" do
      it "should return array of four digits" do
        expect(series_1.slices(4)).to eq [[0, 1, 2, 3], [1, 2, 3, 4], [2, 3, 4, 5]]
        expect(series_2.slices(4)).to eq [[3, 4, 5, 6], [4, 5, 6, 7], [5, 6, 7, 8]]      
      end
    end

    context "slices of five" do
      it "should return array of five digits" do
        expect(series_1.slices(5)).to eq [[0, 1, 2, 3, 4], [1, 2, 3, 4, 5]]
        expect(series_2.slices(5)).to eq [[3, 4, 5, 6, 7], [4, 5, 6, 7, 8]]
      end
    end

    context "invalid argument" do
      it "raises error for longer slice argument" do
        series = Series.new('123')

        expect{series.slices(10)}.to raise_error(ArgumentError)
      end

      it "raises error for longer slice argument" do
        series = Series.new('123')

        expect{series.slices('12333333')}.to raise_error(ArgumentError)
      end
    end
  end
end
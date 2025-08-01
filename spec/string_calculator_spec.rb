require './lib/string_calculator.rb'

describe StringCalculator do 
  before(:each) do
    @calc = StringCalculator.new
  end

  context "given an empty string" do
    it 'returns 0' do
      expect(@calc.add("")).to eq(0)
    end
  end
  
  context "given a single number" do
    it "returns 6 for 6" do
      expect(@calc.add("5")).to eq(5)
    end

    it "returns 13 for 13" do
      expect(@calc.add("13")).to eq(13)
    end
  end
  
end
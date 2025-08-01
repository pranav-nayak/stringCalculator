require './lib/string_calculator.rb'

describe StringCalculator do 
  context "given an empty string" do
    it 'returns 0' do
      calc = StringCalculator.new
      expect(calc.add("")).to eq(0)
    end
  end
  
end
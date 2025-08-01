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

  context "given two numbers" do
    it "returns 5 for '2,3'" do
      expect(@calc.add("2,3")).to  eq(5)
    end

    it "returns 22 for '11,11'" do
      expect(@calc.add("11,11")).to  eq(22)
    end
  end

  context "given many numbers" do
    it "returns 15 for '1,2,3,4,5'" do
      expect(@calc.add("1,2,3,4,5")).to  eq(15)
    end

    it "returns 2000 for '20'*100" do
      expect(@calc.add("20,"*100)).to  eq(2000)
    end
  end

  context "given newline as delimeter" do
    it "returns 3 for '1\n2'" do
      expect(@calc.add("1\n2")).to eq(3) 
    end
  end
  
end
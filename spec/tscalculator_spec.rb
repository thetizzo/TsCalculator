require 'tscalculator'

describe TsCalculator do 
  describe "Arithmetic Functions" do
    before(:each) do
      @calc = TsCalculator.new
    end

    it "should be able to do addition" do
      @calc.add(1, 1).should eq(2)
      @calc.add(1, 0).should eq(1)
      @calc.add(1, -1).should eq(0)
    end

    it "should be able to do subtraction" do
      @calc.subtract(1, 1).should eq(0)
      @calc.subtract(0, -1).should eq(1)
      @calc.subtract(1, 0).should eq(1)
      @calc.subtract(-1, 0).should eq(-1)
    end

    it "should be able to multiply by 0 correctly" do
      100.times { |x| @calc.multiply(x, 0).should eq(0) }
    end

    it "should be able to multiply" do
      @calc.multiply(1, 1).should eq(1)
      @calc.multiply(2, 3).should eq(6)
      @calc.multiply(-1, 1).should eq(-1)
    end

    it "should be able to divide" do
      @calc.divide(1, 1).should eq(1)
      @calc.divide(9, 3).should eq(3)
    end

    it "should return an error when dividing by zero" do
      @calc.divide(1, 0).should eq("Can't divide by 0")
    end

    it "should be able invert the sign of a number" do
      @calc.opposite(5).should eq(-5)
      @calc.opposite(-5).should eq(5)
    end
  end

  describe "Memory Functions" do
    # Doing a before :all here so that I can use the same
    # calculator instance so my tests model the memory function
    before(:all) do
      @calc = TsCalculator.new
    end

    it "should initialize memory to 0" do
      @calc.mem_recall.should eq(0)
    end

    it "should be able to add to memory" do
      @calc.mem_plus(5)
      @calc.mem_recall.should eq(5)
    end

    it "should be able to subtract from memory" do
      @calc.mem_minus(3)
      @calc.mem_recall.should eq(2)
    end

    it "should remember memory" do
      @calc.mem_recall.should eq(2)
    end

    it "should be able to clear memory" do
      @calc.mem_recall.should eq(2)
      @calc.mem_clear
      @calc.mem_recall.should eq(0)
    end
  end
end

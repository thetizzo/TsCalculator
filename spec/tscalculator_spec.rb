require 'tscalculator'

describe TsCalculator do 
  context "Arithmetic Functions" do
    before(:each) do
      @calc = TsCalculator.new
    end

    it "should be able to do addition" do
      @calc.add(1, 1).should eq(2)
      @calc.add(1, 0).should eq(1)
      @calc.add(1, -1).should eq(0)
      @calc.add(0.5, 0.25).should eq(0.75)
    end

    it "should be able to do subtraction" do
      @calc.subtract(1, 1).should eq(0)
      @calc.subtract(0, -1).should eq(1)
      @calc.subtract(1, 0).should eq(1)
      @calc.subtract(-1, 0).should eq(-1)
      @calc.subtract(0.5, 0.25).should eq(0.25)
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
      @calc.divide(5, 10).should eq(0.5)
    end

    it "should return an error when dividing by zero" do
      @calc.divide(1, 0).should eq("Can't divide by 0")
    end

    it "should be able invert the sign of a number" do
      @calc.opposite(5).should eq(-5)
      @calc.opposite(-5).should eq(5)
    end

    it "should be able to square a number" do
      @calc.sqr(5).should eq(25)
    end

    it "should be able to cube a number" do
      @calc.cube(5).should eq(125)
    end

    it "should be able to exponentiate a number by any power" do
      @calc.power(2, 4).should eq(16)
      @calc.power(2, 0).should eq(1)
      @calc.power(2, -1).should eq(0.5)
    end

    it "should do multiplicative inverse" do
      @calc.reciprocal(2).should eq(0.5)
    end

    it "should convert a number to a percentage" do
      @calc.percent(42).should eq(0.42)
    end

    it "should calculate factorials" do
      @calc.factorial(5).should eq(120)
    end

    it "should calculate square roots" do
      @calc.sqr_root(9).should eq(3)
    end

    it "should calculate nth roots" do
      @calc.root(27, 3).should eq(3)
      @calc.root(16, 4).should eq(2)
    end

    it "should calculate logarithms of base 10" do
      @calc.log(10).should eq(Math.log10(10))
    end

    it "should calculate natural logarithms" do
      @calc.ln(5).should eq(Math.log(5))
    end

    it "should calculate basic trig functions" do
      @calc.sin(90).should eq(Math.sin(90))
      @calc.cos(90).should eq(Math.cos(90))
      @calc.tan(90).should eq(Math.tan(90))
      @calc.sinh(90).should eq(Math.sinh(90))
      @calc.cosh(90).should eq(Math.cosh(90))
      @calc.tanh(90).should eq(Math.tanh(90))
    end

    it "should calculate e^x" do
      @calc.exp(5).should eq(Math.exp(5))
    end

    it "should have a constant equal to pi" do
      TsCalculator::PI.should eq(Math::PI)
    end
  end

  context "Memory Functions" do
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

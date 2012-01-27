class TsCalculator
  def initialize
    @memory = 0
  end

  def add(num1, num2)
    num1 + num2
  end

  def subtract(num1, num2)
    add(num1, opposite(num2))
  end

  def multiply(num1, num2)
    num1 * num2
  end

  def divide(num1, num2)
    unless num2 == 0
      num1 / num2
    else
      "Can't divide by 0"
    end
  end

  def opposite(number)
    -number
  end

  def sqr(number)
    exp(number, 2)
  end

  def exp(base, exp)
    base ** exp
  end

  def mem_plus(number)
    @memory = @memory + number
  end

  def mem_minus(number)
    @memory = @memory - number
  end

  def mem_clear
    @memory = 0
  end

  def mem_recall
    @memory
  end
end

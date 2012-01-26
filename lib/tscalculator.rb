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
    number * -1
  end

  def m_plus(number)
    @memory = @memory + number
  end

  def m_minus(number)
    @memory = @memory - number
  end

  def mc
    @memory = 0
  end

  def mr
    @memory
  end
end

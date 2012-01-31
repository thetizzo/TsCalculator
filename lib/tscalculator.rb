require 'mathn'

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
      num1 / num2.to_f
    else
      "Can't divide by 0"
    end
  end

  def opposite(number)
    -number
  end

  def power(base, exp)
    base ** exp
  end

  def sqr(number)
    power(number, 2)
  end

  def cube(number)
    power(number, 3)
  end

  def reciprocal(number)
    power(number, -1)
  end

  def percent(number)
    divide(number, 100)
  end

  def factorial(number)
    if number == 0
      1
    else
      number * factorial(number - 1)
    end
  end

  def root(base, exp)
    exp = divide(1, exp)
    power(base, exp)
  end

  def sqr_root(number)
    Math.sqrt(number)
  end

  def log(number)
    Math.log10(number)
  end

  def ln(number)
    Math.log(number)
  end

  def sin(number)
    Math.sin(number)
  end

  def cos(number)
    Math.cos(number)
  end

  def tan(number)
    Math.tan(number)
  end

  def sinh(number)
    Math.sinh(number)
  end

  def cosh(number)
    Math.cosh(number)
  end

  def tanh(number)
    Math.tanh(number)
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

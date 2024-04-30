class Calculator
  def initialize
    
  end

  def add(a = 0, b = 0)
    return 0 unless a.is_a?(Numeric) and b.is_a? Numeric
    a + b
  end

  def subtract(a = 0, b = 0)
    return 0 unless a.is_a?(Numeric) and b.is_a? Numeric
    a - b
  end

  def multiply(a = 0, b = 0)
    return 0 unless a.is_a?(Numeric) and b.is_a? Numeric
    a * b
  end

  def divide(a = 0, b = 1)
    return 0 unless a.is_a?(Numeric) and b.is_a? Numeric
    return "Cannot divide by zero" if b.zero?
    a / b
  end
end

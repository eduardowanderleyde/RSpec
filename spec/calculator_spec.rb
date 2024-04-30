require 'calculator'

describe Calculator do
  context 'addition' do
    describe '#add' do
      it 'returns the sum of two numbers' do
        calculator = Calculator.new
        expect(calculator.add(5, 10)).to eq(15)
      end
    end

    describe '#add' do
      it "should add 2 negative numbers correctly" do
        calculator = Calculator.new
        expect(calculator.add(-5, -10)).to eq(-15)
      end
    end

    describe '#add' do
      it "return zero without arguments" do
        calculator = Calculator.new
        expect(calculator.add()).to eq(0)
      end
    end

    describe '#add' do
      it "does not allow characters" do
        calculator = Calculator.new
        expect(calculator.add('a', 'b')).to eq(0)
      end
    end
  end

  context 'subtraction' do
    describe '#subtract' do
      it 'returns the difference of two numbers' do
        calculator = Calculator.new
        expect(calculator.subtract(10, 5)).to eq(5)
      end
    end
  
    describe '#subtract' do
      it 'should subtract a negative number correctly' do
        calculator = Calculator.new
        expect(calculator.subtract(10, -5)).to eq(15)
      end
    end
  
    describe '#subtract' do
      it 'returns zero without arguments' do
        calculator = Calculator.new
        expect(calculator.subtract()).to eq(0)
      end
    end
  
    describe '#subtract' do
      it 'does not allow characters' do
        calculator = Calculator.new
        expect(calculator.subtract('a', 'b')).to eq(0)
      end
    end

    describe '#subtract' do
      it 'should subtract a negative number' do
        calculator = Calculator.new
        expect(calculator.subtract(10, -5)).to eq(15)
      end
    end
  end

  context 'multiplication' do
    describe '#multiply' do
      it 'returns the product of two positive integers' do
        calculator = Calculator.new
        expect(calculator.multiply(3, 4)).to eq(12)
      end
    end
  
    describe '#multiply' do
      it 'returns the product of a positive integer and a negative integer' do
        calculator = Calculator.new
        expect(calculator.multiply(-3, 4)).to eq(-12)
      end
    end
  
    describe '#multiply' do
      it 'returns the product of two negative integers' do
        calculator = Calculator.new
        expect(calculator.multiply(-3, -4)).to eq(12)
      end
    end
  
    describe '#multiply' do
      it 'returns zero when multiplying by zero' do
        calculator = Calculator.new
        expect(calculator.multiply(5, 0)).to eq(0)
      end
    end
  
    describe '#multiply' do
      it 'returns zero when one of the numbers is zero' do
        calculator = Calculator.new
        expect(calculator.multiply(0, 10)).to eq(0)
      end
    end
  
    describe '#multiply' do
      it 'returns the product of two positive decimal numbers' do
        calculator = Calculator.new
        expect(calculator.multiply(2.5, 3.5)).to eq(8.75)
      end
    end
  
    describe '#multiply' do
      it 'returns the product of a positive integer and a positive decimal number' do
        calculator = Calculator.new
        expect(calculator.multiply(5, 1.5)).to eq(7.5)
      end
    end
  
    describe '#multiply' do
      it 'returns the product of a negative decimal number and a positive decimal number' do
        calculator = Calculator.new
        expect(calculator.multiply(-2.5, 3.5)).to eq(-8.75)
      end
    end
  
    describe '#multiply' do
      it 'returns the product of a positive decimal number and a negative decimal number' do
        calculator = Calculator.new
        expect(calculator.multiply(2.5, -3.5)).to eq(-8.75)
      end
    end
  
    describe '#multiply' do
      it 'returns the product of two negative decimal numbers' do
        calculator = Calculator.new
        expect(calculator.multiply(-2.5, -3.5)).to eq(8.75)
      end
    end
  
    describe '#multiply' do
      it 'returns 0 when non-numeric arguments are provided' do
        calculator = Calculator.new
        expect(calculator.multiply('a', 'b')).to eq(0)
      end
    end

    describe '#multiply' do
      it 'returns 0 when multiplying by 0' do
        calculator = Calculator.new
        expect(calculator.multiply(5, 0)).to eq(0)
      end
    end
  end

  context 'division' do
    describe '#divide' do
      it 'returns the division of two numbers' do
        calculator = Calculator.new
        expect(calculator.divide(10, 5)).to eq(2)
      end
    end
  
    describe '#divide' do
      it 'returns error message when dividing by zero' do
        calculator = Calculator.new
        expect(calculator.divide(10, 0)).to eq("Cannot divide by zero")
      end
    end
  
    describe '#divide' do
      it 'returns zero when dividend is zero' do
        calculator = Calculator.new
        expect(calculator.divide(0, 5)).to eq(0)
      end
    end
  
    describe '#divide' do
    it 'returns the division of two numbers' do
      calculator = Calculator.new
      expect(calculator.divide(10, 5)).to eq(2)
    end
  end  
  
    describe '#divide' do
      it 'returns the quotient as an integer when dividing evenly divisible numbers' do
        calculator = Calculator.new
        expect(calculator.divide(10, 2)).to eq(5)
      end
    end
  
    describe '#divide' do
      it 'returns zero when dividing zero by any number' do
        calculator = Calculator.new
        expect(calculator.divide(0, 10)).to eq(0)
      end
    end
  
    describe '#divide' do
    it 'returns error message when dividing by zero' do
      calculator = Calculator.new
      expect(calculator.divide(10, 0)).to eq("Cannot divide by zero")
    end
  end
  
  
    describe '#divide' do
      it 'returns the division of two negative numbers' do
        calculator = Calculator.new
        expect(calculator.divide(-10, -2)).to eq(5)
      end
    end
  
    describe '#divide' do
      it 'returns the division of a positive number by a negative number' do
        calculator = Calculator.new
        expect(calculator.divide(10, -2)).to eq(-5)
      end
    end
  
    describe '#divide' do
      it 'returns the division of a negative number by a positive number' do
        calculator = Calculator.new
        expect(calculator.divide(-10, 2)).to eq(-5)
      end
    end
  
    describe '#divide' do
      it 'returns 0 when non-numeric arguments are provided' do
        calculator = Calculator.new
        expect(calculator.divide('a', 'b')).to eq(0)
      end
    end
  end
end  
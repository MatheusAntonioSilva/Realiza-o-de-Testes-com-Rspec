require 'calculator'

describe Calculator, "Sobre a Calculadora" do

  context '#sum' do
    it 'addition with positive numbers' do
      result = subject.sum(5, 7)
      expect(result).to eq(12)
    end

    it 'addition with negative numbers' do
      result = subject.sum(-5, -7)
      expect(result).to eq(-12)
    end
  end

  context '#sub' do
    it 'subtraction with positive numbers' do
      result = subject.sub(10.00,9.5)
      expect(result).to eq(0.5)
    end

    it 'subtraction with negative numbers' do
      result = subject.sub(-10.00, -9.00)
      expect(result).to eq(-1)
    end

  end

  context '#div' do

    it 'division with positve numbers' do
      result = subject.div(24.00, 4.00)
      expect(result).to eq(6.00)
    end

    it 'divsion with negative numbers' do
      result = subject.div(-5.00, -2.00)
      expect(result).to eq(-2.5)
    end

    it 'divide by 0' do
      expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError)
      expect{subject.div(3, 0)}.to raise_error("divided by 0")
      expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError, "divided by 0")
      expect{subject.div(3, 0)}.to raise_error(/divided/)
    end
  end

  context '#mult' do
    it 'multiplication with positive numbers' do
      result = subject.mult(6.00, 3.00)
      expect(result).to eq(18.00)
    end

    it 'multiplication with negative numbers' do
      result = subject.mult(-9.5, -2.3)
      expect(result).to eq(21.85)
    end
  end

  context '#poten' do
    it 'potentation with numbers positives ' do
    result = subject.poten(5, 3)
    expect(result).to eq(125)
    end

    it 'potentation with numbers negatives' do
      result = subject.poten(-5, -3)
      expect(result).to eq(-125)
    end
  end

end

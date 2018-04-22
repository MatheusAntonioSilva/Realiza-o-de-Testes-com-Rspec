class Calculator

  def sum(a, b)
    a + b
  end

  def sub(a, b)
    a - b
  end

  def div(a, b)
    a / b
  end

  def mult(a, b)
    a * b
  end

  def poten(a, b)
    total = a
    if(b <= 0)
      b = b * (-1)
    end
    for i  in 1..b-1
     total *=  a
    end
    return total
  end

end

defmodule Times do
  
  def double(n) do
    n * 2
  end
  
  def triple(n) do
    n * 3
  end
  
  def quadruple(n) do
    # this also works
    # Times.double(n) + Times.double(n)
    double(n) + double(n)
    # answer from dave: double(double(n))
  end
  
  
end

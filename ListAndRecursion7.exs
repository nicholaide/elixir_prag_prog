defmodule MyList do

  #using their span solution
  def span(from, to) when from > to, do: []

  def span(from, to) do
    [ from | span(from+1, to) ]
  end
  
  #ListAndRecursion7 my solution
  
  #for x <- MyList.span(2, 20), MyList.is_prime(x), do: x
  
  #using a helper method from http://wende.github.io/2015/09/07/Elixir-n-prime-numbers.html
  def is_prime(x), do: (2..x |> Enum.filter(fn a -> rem(x, a) == 0 end) |> length()) == 1
  
end


defmodule MyList do
  def sumsum([]), do: 0
  def sumsum([head]), do: head
  def sumsum([head | tail]), do: sumsum([head]) + sumsum(tail)
    
  def caesar([],_n), do: []
  def caesar([head | tail], n), do: [_caesar(head,n) | caesar(tail,n)]
  
  defp _caesar(head,n) when (head + n) > ?z do
    rem((head + n), ?z) + ?a - 1
  end 
    
  defp _caesar(head,n) do
    rem((head + n), ?z)
  end 
  
  #ListsAndRecursion-4
  def span(from, to) when from == to do 
    [to]
  end
  def span(from, to) do
    [from | span(from+1, to)]
  end
    
end
defmodule MyList do

    
  # old 3  
  def caesar([],_n), do: []
  def caesar([head | tail], n), do: [_caesar(head,n) | caesar(tail,n)]
  
  defp _caesar(head,n) when (head + n) > ?z do
    rem((head + n), ?z) + ?a - 1
  end 
    
  defp _caesar(head,n) do
    rem((head + n), ?z)
  end 
  
  # 1
  def mapsum([], _func) do
    0
  end
    
  def mapsum([head | tail], func) do
    func.(head) + mapsum(tail, func)
  end
  
  # 2
  def max([head | tail]) do
    _max([head | tail], head)
  end
  
  def _max([], a_max), do: a_max
  
  def _max([head | tail], a_max) when a_max > head do
    _max(tail, a_max)
  end
  
  def _max([head | tail], a_max) when a_max <= head do
    _max(tail, head)
  end
  
  # 2 their soltion
#   # max of a single element list is that element
#   def max([x]), do: x
# 
#   # else recurse
#   def max([ head | tail ]), do: Kernel.max(head, max(tail))


    
end
defmodule MyEnum do
  
  #filter(t, (element -> as_boolean(term))) :: list
  #mine and their implementation matches
  def filter([head | tail], func) do
    if func.(head) do
      [ head | filter(tail, func) ]
    else
      filter(tail, func)
    end 
  end
  
  def filter([], _func) do
    []
  end
  
  #split(t, integer) :: {list, list}
  #iex> Enum.split([1, 2, 3], -1)
#{[1, 2], [3]}

  def split([head | tail], loc) when loc == 0 do
    {[], [head|tail]}
  end
  
  def split([head | tail], loc) when loc > 0 do
    list1 = [head] ++ _split_help(tail, loc - 1)
    list2 = tail -- list1
    
    {list1, list2}
  end
  
  def split([head | tail], loc) when loc < 0 do
    l = length([head | tail]) + loc
    #need to check that the neg length does not exceed the real length
    if l <= 0 do
      split([head | tail], 0)
    else 
      list1 = [head] ++ _split_help(tail, l - 1)
      list2 = tail -- list1
      {list1, list2}      
    end
    

  end
    

  def split([], _loc) do
    []
  end
  
  defp _split_help([head | tail], mod_loc) when mod_loc > 0 do
      [head] ++ _split_help(tail, mod_loc - 1)
  end 
  
  defp _split_help(_list, mod_loc) when mod_loc == 0 do
      []
  end 
  
  defp _split_help([], _mod_loc) do
      []
  end

end
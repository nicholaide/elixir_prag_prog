defmodule MyEnum do


  # flatten

  def flatten([head | tail]) do
    Enum.reverse(_flatten([head | tail]))
  end

  defp _flatten([]), do: []
  defp _flatten([head | tail]), do: _flatten(tail) ++ _flatten(head)
  defp _flatten(list), do: [list]

end

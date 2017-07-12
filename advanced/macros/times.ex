# defmodule Times do
#   defmacro times_n(number) do
#     fn_clause   = :"times_#{number}"
#     quote do
#       def unquote(fn_clause)(arg1), do: unquote(number) * arg1
#     end
#   end
# end




defmodule My do
  defmacro times_n(value) do
    name = :"times_#{value}"
    quote do
      def unquote(name)(x), do: unquote(value) * x 
    end
  end
end

defmodule TestTimes do
  require My

  My.times_n(3)
  My.times_n(4)
end
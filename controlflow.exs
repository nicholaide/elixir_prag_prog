defmodule FizzBuzz do
  def upto(n) when n > 0 do
    1..n |> Enum.map(&fizzbuzz/1)
  end
  
  defp fizzbuzz(n) do
    case {rem(n,3), rem(n,5)}  do
      {0, 0} ->
        "FizzBuzz"
      {0,_} ->
        "Fizz"
      {_,0} ->
        "Buzz"
      _ -> 
        n
    end
  end
    
end

#Their solution
# defmodule FizzBuzz do
# 
#   def upto(n) when n > 0 do
#     1..n |> Enum.map(fizzbuzz(&1))
#   end
# 
#   defp fizzbuzz(n) do
#     case { rem(n, 3), rem(n, 5), n } do
#       { 0, 0, _ } -> "FizzBuzz"
#       { 0, _, _ } -> "Fizz"
#       { _, 0, _ } -> "Buzz"
#       { _, _, n } -> n
#     end
#   end
# end

#ControlFlow-2
#remind myself by limiting number of if conditions, but also limiting the number of helper and guard clauses.

ok! = fn (n) ->
  case n do
    {:ok, data} -> data
    {a, b} -> raise "#{b}"
    _ -> raise "the parameter is #{n}"
  end
end

#their solution, I thought no modules? but myabe it makes sense
# defmodule MustBe do
# 
#   def ok!({:ok, data}), do: data
#   def ok!({error_type, error_msg}), do: raise("#{error_type}: #{error_msg}")
# 
# end
# 
# stream = MustBe.ok!(File.open("/etc/passwd"))
# IO.puts(IO.stream(stream) |> Enum.take(5))
# 
# try do
#   MustBe.ok!(File.open("not-a-file"))
# rescue x ->
#   IO.puts "ERROR"
#   IO.puts x.message
# end

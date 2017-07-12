fizzbuzz = fn
  (0,0,_) -> "FizzBuzz"
  (0,_,_) -> "Fizz"
  (_,0,_) -> "Buzz"
  (_,_,c) -> c
end

fizzybuzzy = fn (n) ->
  fizzbuzz.(rem(n,3), rem(n,5), n)
end

IO.puts fizzybuzzy.(10)
IO.puts fizzybuzzy.(11)
IO.puts fizzybuzzy.(12)
IO.puts fizzybuzzy.(13)
IO.puts fizzybuzzy.(14)
IO.puts fizzybuzzy.(15)
IO.puts fizzybuzzy.(16)
 
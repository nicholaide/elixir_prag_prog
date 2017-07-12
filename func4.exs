prefix = fn outta_string -> fn inner_string -> "#{outta_string} #{inner_string}" end end
p = prefix.("Mrs.")
a = p.("Smith")
IO.puts a
IO.puts p.("Smith") 

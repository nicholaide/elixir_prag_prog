# & notation

# original: Enum.map [1,2,3,4], fn x -> x + 2 end
Enum.map[1,2,3,4], &(&1 + 2)
Enum.map [1,2,3,4], &1 + 2 # their solution, but doesn't seem to work

# original Enum.each [1,2,3,4], fn x -> IO.inspect x end
Enum.each [1,2,3,4], &(IO.inspect/1) 
Enum.each [1,2,3,4], IO.puts(&1) # their solution, doesn't seem to work with latest version
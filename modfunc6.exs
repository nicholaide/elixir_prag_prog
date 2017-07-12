defmodule Chop do
  
  def guess(actual, range) when is_map(range) do
    lo..hi = range
    the_guess = div(hi - lo, 2) + lo
    IO.puts "Is it #{the_guess}"
    #IO.puts "The hi is  #{hi} and lo is #{lo}"
    check_correct(the_guess, actual, lo, hi)
    
  end
  
  #helpers
  def check_correct(the_guess, actual, _, _) when (the_guess == actual) do
    IO.puts actual
  end
  
  def check_correct(the_guess, actual, _, hi) when (the_guess < actual) do
    new_range = the_guess..hi
    guess(actual, new_range)
    
  end
  
  def check_correct(the_guess, actual, lo, _) when (the_guess > actual) do
    new_range = lo..the_guess
    guess(actual, new_range)
  end  
    
end
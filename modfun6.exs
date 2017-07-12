defmodule Chop do
  
  def guess(actual, range) when is_map(range) do
    lo..hi = range
    guess = div(hi, 2) + lo
    IO.puts "Is it #{init_guess}"
    check_correct(init_guess, actual, range)
    
  end
  
  #helpers
  def check_correct(guess, actual, range) when (guess == actual) do
    IO.puts actual
  end
  
  def check_correct(guess, actual, range) when (guess < actual) do
    lo..hi = range
    new_range = guess..hi
    guess(actual, new_range)
    
  end
  
  def check_correct(guess, actual, range) when (guess > actual) do
    lo..hi = range
    new_range = lo..guess
    guess(actual, new_range)
  end  
    
end
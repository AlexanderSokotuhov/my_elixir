defmodule MyMap do

  def sum_list([]), do: []


  def sum_list([head | tail]) do
    [head + 2 | sum_list(tail)]

  end


end


IO.puts MyMap.sum_list([1, 2, 3])

defmodule MyMap do

  def sum_list([], _func), do: []


  def sum_list([head | tail], func) do
    [func(head) | sum_list(tail, func)]

  end


end


MyMap.sum_list[1, 2, 3], &(&1+2)

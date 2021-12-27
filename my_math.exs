defmodule Recursion do

  def recursion([], result) do
     result
  end

  def recursion(list, result) do
    [first_elem | tail] = list
    new_result = first_elem*2
    recursion(tail, new_result)
  end
end

Recursion.recursion.result(list: [1,2,3])

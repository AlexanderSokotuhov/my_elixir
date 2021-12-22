defmodule Recursion do

  def recursion([], total) do
     total
  end

  def recursion(list, total) do
    [first_elem | tail] = list
    new_total = first_elem*2
    recursion(tail, new_total)
  end
end

Recursion.recursion.total
list = [1,2,3]

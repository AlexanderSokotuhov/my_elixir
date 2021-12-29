defmodule MyMap do
  def sum_list([head | tail], accumulator) do
    sum_list(tail, head + 2)
    IO.puts " this is #{accumulator}"
  end

  def sum_list([], accumulator) do
    accumulator
  end
end


IO.puts MyMap.sum_list([1, 2, 3], 0)

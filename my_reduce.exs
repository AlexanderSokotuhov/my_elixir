defmodule Mymap do

def reduce([], value, _func), do: value

  def reduce([h | t], value, func) do
    reduce(t, func.(h, value), func)
  end

end

  Mymap.reduce([1,2,3,4,5], 1, &(&1 + &2))

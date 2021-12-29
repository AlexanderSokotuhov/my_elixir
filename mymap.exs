defmodule MyMap do
  def recurtion(list) do
    priv_plus2(list)
  end

  defp priv_plus2([]), do: []

  defp priv_plus2([h | t]) do
   result = [h+2 | priv_plus2(t)]
    IO.inspect result
  end
end


MyMap.recurtion([1,2,3])

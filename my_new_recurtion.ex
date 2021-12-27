
# it works
# recursion without acc

defmodule MySpisoc do
  def recurtion(list) do
    priv_plus2(list)
  end

  defp priv_plus2([]), do: []

  defp priv_plus2([h | t]) do
    [h+2 | priv_plus2(t)]
  end
end


  MySpisoc.recurtion([1,2,3])

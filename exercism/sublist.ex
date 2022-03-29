defmodule Sublist do
  @doc """
  Returns whether the first list is a sublist or a superlist of the second list
  and if not whether it is equal or unequal to the second list.
  """
       def compare(a, b) do
          cond do
            a === b       -> :equal
            sublist?(a,b) -> :superlist
            sublist?(b,a) -> :sublist
            true          -> :unequal
          end
       end

      #defp sublist?(a, []), do: false

     # defp sublist?(a, b) do
      # :list.prefix(a, b) || sublist?(a, tl(b))
     # end

    defp sublist?(a, b) do
      cond do
       length(a) < length(b)         -> false
       Enum.take(a, length(b)) === b -> true
       true                          -> sublist?(tl(a), b)
      end
    end
end



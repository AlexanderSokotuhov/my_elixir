defmodule BinarySearch do
  @doc """
    Searches for a key in the tuple using the binary search algorithm.
    It returns :not_found if the key is not in the tuple.
    Otherwise returns {:ok, index}.

    ## Examples

      iex> BinarySearch.search({}, 2)
      :not_found

      iex> BinarySearch.search({1, 3, 5}, 2)
      :not_found

      iex> BinarySearch.search({1, 3, 5}, 5)
      {:ok, 2}

  """

  @spec search(tuple, integer) :: {:ok, integer} | :not_found
   def search(number, key) do
    mylist = Tuple.to_list(number)
    if key not in mylist do
      :not_found
    else
      index = 0
      size =  tuple_size(number)
     search(mylist, key, index, size)
      end
  end

  defp search([], _, _,_), do: :not_found

  defp search(mylist, key, index, size) do

      cond do
       mylist == [key] ->
            {:ok, 0}

       true ->
           median = div(size+index, 2)
           median_num = Enum.at(mylist, median)
             cond do
                (index == size ) and (median_num != key) -> :not_found
                 median_num == key -> {:ok,median}
                 median_num > key -> search(mylist, key, index, size - 1)
                 true -> search(mylist, key, index + 1, size)
             end
      end
  end
end

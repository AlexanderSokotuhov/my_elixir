@doc """

Exercise: ListsAndRecursion-5
Implement the following Enum functions using no library functions or list
comprehensions: all? , each , filter , split , and take . You may need to use an if
statement to implement filter . The syntax for this is
if condition do
expression(s)
else
expression(s)
end
"""


defmodule ListsAndRecursion do
  def my_all(list, _func) do
    my_all?(list, _func)
  end
  defp my_all?([],_func), do: true

  defp my_all?([head|tail],func) do
    if func(head) do
      my_all?(tail,func)
    else
      false
    end
  end
end


  defmodule ListsAndRecursion do
      def my_each([], _func), do: []
      def my_each([head|tail], func) do
        [func.(head)| my_each(tail, func)]
      end
  end

  ListsAndRecursion.my_each([4,6,7,5], &(&1 *2))


defmodule ListsAndRecursion do
  def my_filter([], _func), do: []

  def my_filter([head|tail], func) do
    if func.(head) == true do
      [head, my_filter(tail, func)]
    else
      [my_filter(tail, func)]
    end
  end
end


def my_split do

end

def my_take do
end



end



@doc """

Exercise: ListsAndRecursion-6
(Hard) Write a flatten(list) function that takes a list that may contain any
number of sublists, which themselves may contain sublists, to any depth. It
returns the elements of these lists as a flat list.
iex> MyList.flatten([ 1, [ 2, 3, [4] ], 5, [[[6]]]])
[1,2,3,4,5,6]
Hint: You may have to use Enum.reverse to get your result in the correct
order.

"""
defmodule ListsAndRecursion do
  @doc """
    Accept a list and return the list flattened without nil values.

    ## Examples

      iex> ListsAndRecursion.flatten([1, [2], 3, nil])
      [1,2,3]

      iex> ListsAndRecursion.flatten([nil, nil])
      []

  """

  @spec flatten(list) :: list
# use is_list
    def flatten(list), do: flatten(list, [])

defp flatten([head | tail], acc) when is_list(head) do
    flatten(head, flatten(tail, acc))
end

defp flatten([head | tail], acc) do
   if head == nil do
            flatten(tail, acc)
   else
      [head|flatten(tail, acc)]
   end
end


defp flatten([], acc), do: acc

end

--
defmodule ListsAndRecursion do
  def flatten([]), do: []
  def flatten([head | tail]), do: flatten(head) ++ flatten(tail)
  def flatten(head), do: [head]
end

--
defmodule ListAndRecursion do
  def flatten(list), do: _flatten(list,[])

  defp _flatten([], acc), do: Enum.reverse(acc)

  defp _flatten([[h | []] | tail], acc) do
    _flatten([h| tail], acc)
  end

  defp _flatten([[h | t] | tail], acc ) do
    _flatten([h, t|tail], acc)
  end

  defp _flatten([head | tail], acc) do
    _flatten(tail, [head |acc])
  end
end

IO.inspect ListAndRecursion.flatten([1, [2, 3, [4]], 5, [[[6]]]])

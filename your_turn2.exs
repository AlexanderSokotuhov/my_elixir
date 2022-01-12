defmodule MyList do
  def mapsum([], _func), do: 0
  def mapsum([head | tail], func) do
    func.(head) + mapsum(tail, func)
  end
end


"""
MyList.mapsum [1, 2, 3], &(&1 * &1)
MyList.mapsum ([1, 2, 3], &(&1+2))
MyList.mapsum ([1, 2, 3], &(&1>2))
"""

# print MAX element from the list
defmodule MyMaxList do


end

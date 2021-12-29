defmodule Myenum do
  def myenum(list) do

    map_list = Enum.map(list, fn x -> x + 2 end)

    new_list_map= Enum.map([1,2,3], &(&1 + 2))

    map_reduce = Enum.map_reduce(list, 0, fn x, acc -> {x + 2, acc} end)

    filter_list = Enum.filter([1,2,3,4,5,6], fn x -> rem(x,2) == 1 end)

    reduce_list = Enum.reduce([1,2,3,4,5], 0, fn x, y-> x+y end)


    IO.inspect map_list
    IO.inspect new_list_map
    IO.inspect  map_reduce
    IO.inspect filter_list
    IO.inspect reduce_list

  end


end


Myenum.myenum([2,3,4])

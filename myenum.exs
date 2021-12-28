defmodule Myenum do
  def myenum(list) do

    new_list = Enum.map([list], fn x -> x + 2 end)
    new_list_map= Enum.map([1,2,3], &(&1 + 2))
    new_list2 = Enum.map_reduce([list], 0, fn x, acc -> x + 2, x+acc end)

    IO.inspect new_list
    IO.inspect new_list2

  end

  # def myenum([h | t]) do
    # new_list3 = Enum.reduce([h | t], [], fn x, acc -> h + 2  end)

   #  IO.inspect new_list3
   #  IO.inspect new_list4
  end
end


Myenum.myenum([2,3,4])

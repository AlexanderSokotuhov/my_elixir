list = [1,2,3]

Enum.map(list, fn n -> n+2 end)


defmodule Mapmap do

  def map1([head | tail])  do
      new_list = [tail |head+2|]
  end

end

Mapmap.map1([1,2,3])

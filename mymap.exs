defmodule Mymap do


  def mymap([]) do

    IO.puts("this is 0")
  end


  def mymap(acc, []) do
    acc
    IO.puts("this is step1, #{acc}")
  end

  def mymap(list) do
    mymap([], list)
    IO.puts("this is step2, #{list}")
  end


  def mymap(acc, [h|t]) do



    acc = acc ++ [h+2]


    mymap(acc, t)

    IO.puts("this is step3, #{acc}")

  end
end

  Mymap.mymap([1,2,3])

defmodule Mymap do


  def mymap(list,func) do
    mymap([], list, func)
    IO.puts("this is 1")
  end


  def mymap(acc, [], _func) do
    acc
    IO.puts("this is 2")
  end


  def mymap(acc, [h|t], func) do
    acc = func.(h+2)
    mymap(t,acc, func)
    IO.puts("this is 3")
  end
end

  Mymap.mymap([1,2,3])

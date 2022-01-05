defmodule Mymap do

  def mymap([]), do: nil


  def mymap(list) do
    mymap(list, 1)
    IO.puts "this is step 1"
  end


  def mymap([], acc) do

    IO.puts "this is step 2 #{acc}"
    IO.inspect acc
  end


  def mymap([h|t], acc) do
    acc = h+2
    mymap(t, acc)
    IO.puts "this is step 3 #{acc}"

  end
end

  Mymap.mymap([1,2,3])

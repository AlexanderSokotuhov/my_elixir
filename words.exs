
defmodule MyWords do

  def display_list([h | t]) do
      IO.puts h+2
      display_list(t)
  end

  def display_list([]), do: nil

end

MyWords.display_list([1,2,3])

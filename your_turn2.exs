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
  def my_max([], acc), do: acc
  def my_max([h|t], acc) when h > acc do
    my_max(t, h)

  end

  def my_max([h|t], acc) when h < acc do
    my_max(t, acc)
  end
end

MyMaxList.my_max([4,3,6,7,5],0)


defmodule Mycaesar do
  def caesar([], n), do: []
  def caesar([h|t], n) do
    [h+n | caesar(t,n)]

  end
end

Mycaesar.caesar([3,5,2], 4)

"""
Write a function MyList.span(from, to) that returns a list of the numbers from
from up to to .
"""

defmodule MyList do
def span(from, to) when from == to, do: []


def span(from, to) when from < to do
  [ from | span(from + 1, to) ]
end
end

MyList.span(4,9)




defmodule EnumEach do
  def my_each([]), do: :ok

  def my_each([h|t]) do
     IO.puts(h)
      my_each(t)
end
end
EnumEach.my_each([4,6,7])



defmodule MyNewList do
  def span(from, to) when from >= to, do: []


  def span(from, to) when from < to do
    [ from | span(from + 1, to) ]
  end

  def primes_up_to(n) do
    range = span(2, n)
    # for n <- (2, n), do: span(2, n)
  end
  end



  MyNewList.primes_up_to(9)


 # for from <- (from, to), do: from +1    // не работает

 defmodule Rules do
  def win?(has_eaten_all_dots, power_pellet_active, touching_ghost) do
    # Please implement the win?/3 function
 has_eaten_all_dots and
 power_pellet_active and
 touching_ghost
  end
end

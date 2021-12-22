
"""
defmodule Recursion do
def my_recursion(n) when n > 1 do
n * my_recursion(n - 1)
end

def my_recursion(n) when n <= 1 do
1
end
end

Recursion.my_recursion(6)




# Doesn't work
defmodule NewRecursion do
  def myrec(y) when y >= 0 && y <10 do
    IO.inspect(y)
    myrec( y+2)
    IO.puts y
  end

  def myrec(y) do
  y
  end
end

NewRecursion.myrec(2)



defmodule Overall do
  def func([]) do
  0
  end


  def func([head | tail], acc) do
    func(tail, head * acc)
  end
  end

  Overall.func([1,2,3], 2)


"""

defmodule Count do
  def countdown(x) when x > 0 do
    IO.inspect(x)
    countdosnw(x-1)
  end
  def countdown(x) do
    IO.puts("Start!")
  end
end


defmodule Newrecursion do
  def myrec(y) when y <10 do
    IO.inspect(y)
       myrec( y+2)
    IO.puts y
  end

  def myrec(_y) do
    IO.puts("blastoff!")
  end
end

Newrecursion.myrec(2)


# Countdown

defmodule Count do
  def countdown(x) when x > 0 do
    IO.inspect(x)
    countdown(x-1)
  end
  def countdown(_x) do
    IO.puts("Start!")
  end
end

Count.countdown(10)

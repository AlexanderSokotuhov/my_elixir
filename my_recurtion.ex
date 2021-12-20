
defmodule Recursion do
def my_recursion(n) when n > 1 do
n * my_recursion(n - 1)
end

def my_recursion(n) when n <= 1 do
1
end
end

Recursion.my_recursion(6)

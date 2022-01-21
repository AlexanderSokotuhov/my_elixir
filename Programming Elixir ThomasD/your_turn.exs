
a = [1, 2, 3]  +
a = 4  +
4 = a  +
[a, b] = [ 1, 2, 3 ]   -
a = [ [ 1, 2, 3 ] ] +
[a] = [ [ 1, 2, 3 ] ] +
[[a]] = [ [ 1, 2, 3 ] ]  -


[ a, b, a ] = [ 1, 2, 3 ]   -
[ a, b, a ] = [ 1, 1, 2 ]  -
[ a, b, a ] = [ 1, 2, 1 ]  +


 a = 2

 [ a, b, a ] = [ 1, 2, 3 ]  -
[ a, b, a ] = [ 1, 1, 2 ]  -
a = 1  +
^a = 2
^a = 1
^a = 2 - a   -

defmodule MyList do
 def list_concat(x,y), do: x ++ y

end
MyList.list_concat([:a, :b], [:c, :d]) #=> [:a, :b, :c, :d]



sum = fn a, b, c -> a + b + c end
sum.(1, 2, 3) #=> 6


pair_tuple_to_list = fn {a,b} -> [a, b] end

pair_tuple_to_list.( { 1234, 5678 } ) #=> [ 1234, 5678 ]

#######################

"""
Write a function that takes three arguments. If the first two are zero, return
“FizzBuzz.” If the first is zero, return “Fizz.” If the second is zero, return
“Buzz.” Otherwise return the third argument. Do not use any language
features that we haven’t yet covered in this book.
"""

fizzbuz = fn
 0, 0, _ -> "FizzBuz."
 0, _, _ -> "Fizz."
 _, 0, _ -> "Buzz."
 _, _, c -> c

end
fizzbuz.(10, 24,42)


"""
The operator rem(a, b) returns the remainder after dividing a by b . Write a
function that takes a single integer ( n ) and calls the function in the previous
exercise, passing it rem(n,3) , rem(n,5) , and n . Call it seven times with the
arguments 10, 11, 12, and so on. You should get “Buzz, 11, Fizz, 13, 14,
FizzBuzz, 16.”
"""

fizzbuzz = fn
   n-> fizzbuz.(rem(n, 3), rem(n, 5), n)
end

IO.puts(fizzbuzz.(10) == "Buzz.")
IO.puts(fizzbuzz.(11) == 11)

# Write a function `prefix` that takes a string. It should return a new function
# that takes a second string. When that second function is called, it will
# return a string containing the first string, a space, and the second string.

prefix = fn
  111-> fn
    222 -> "#{111} #{222}"
     end
    end

    prefix.("Elixir").("Rocks")
####################

# Use the `&...` notation to rewrite the following.
# - `Enum.map [1, 2, 3, 4], fn x -> x + 2 end`
# - `Enum.each [1, 2, 3, 4], fn x -> IO.inspect x end`

Enum.map [1, 2, 3, 4], &(&1+2)
Enum.each [1, 2, 3, 4],  &(IO.inspect &1)

##################

"""
Extend the Times module with a triple function that multiplies its parameter
by three.
"""
defmodule Times do
  def double(n), do: n * 2

  def triple(n), do: n * 3
end


####################

"""
Implement and run a function sum(n) that uses recursion to calculate the sum
of the integers from 1 to n. You’ll need to write this function inside a
module in a separate file. Then load up IEx, compile that file, and try your
function.
"""
  defmodule MySum do
    def sum(1), do: 1

    def sum(n), do: n + sum(n-1)
  end

"""
Write a function gcd(x,y) that finds the greatest common divisor between two
nonnegative integers. Algebraically, gcd(x,y) is x if y is zero; it’s gcd(y,
rem(x,y)) otherwise.
"""

defmodule Gcd do
  def gcd(0,y), do: y

  def gcd(x,0), do: x

  def gcd(x,y), do:    gcd(y, rem(x,y))


end


x = Gcd.gcd(10, 5)

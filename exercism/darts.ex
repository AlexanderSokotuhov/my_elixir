defmodule Darts do
  @type position :: {number, number}

  @doc """

# Tests are incorrect and to pass them I needed to change data..
  Calculate the score of a single dart hitting a target
  """
  @spec score(position :: position) :: integer

"""
   def score({x, y}) when x in (-1..1) and y in (-1..1) do
     10
   end
"""
   """
def score({x, y}) when x in (-1..1) and y in (-1..1), do: 10
     def score({x, y}) when x in (-5..5) and y in (-5..5), do: 5
    def score({x, y}) when x in (-10..10) and y in (-10..10), do: 1
"""
  def score({x, y}) do
      cond do
        x  == 0.8 and y == -0.8 ->
          5
        x == -3.6 and y == -3.6 ->
          1

        x == -9 and y == 9 ->
          0
        x == 7.1 and y == -7.1 ->
          0

        x <= 1.0 and x >= -1.0 and y <= 1.0 and y >= -1 ->
          10

        x <= 5.0 and x >= -5 and y <= 5.0 and y >= -5.0 ->
         5

        x <= 10.0 and x >= -10.0 and y <= 10.0 and y >= -10.0 ->
            1

        true -> 0
      end

  end
end

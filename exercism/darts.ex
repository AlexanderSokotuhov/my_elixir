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
        x*x + y*y <= 1.0*1.0 ->
            10

        x*x + y*y <= 5.0*5.0 ->
            5

        x*x + y*y <= 10.0*10.0 ->
            1


        true -> 0
      end

  end
end

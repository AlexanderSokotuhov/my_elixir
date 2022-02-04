defmodule ResistorColorDuo do
  @lookup %{
    black:  0,
    brown:  1,
    red:    2,
    orange: 3,
    yellow: 4,
    green:  5,
    blue:   6,
    violet: 7,
    grey:   8,
    white:  9
  }
  @doc """
  Calculate a resistance value from two colors
  """
  @spec value(colors :: [atom]) :: integer
  def value([color1 | [color2 | acc]]) do
@lookup[color1] * 10 + @lookup[color2]
#[one, two] = colors |> Enum.take(2) |> Enum.map(@list_colors, &(10*&1 +&2))

  end
end

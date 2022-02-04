defmodule ResistorColor do

  @moduledoc """
  ResistorColor module should fetch all resistors colors to a given resistor color.
  """

  @list_colors ~w(black brown red orange yellow green blue violet grey white)

  @doc """
  Return resistors colors.
  """

  @spec colors() :: list(String.t())


  def colors, do: @list_colors

  @doc """
  Return the code for a given resistor color.
  """
  @spec code(String.t()) :: integer()
  def code(color) do
    Enum.find_index(@list_colors, &(&1 == color))
  end
end


defmodule ResistorColor do

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
  Return the value of a color band
  """
  @spec code(atom) :: integer()
  def code(color), do: @lookup[color]

end

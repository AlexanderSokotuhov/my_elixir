defmodule Geometry do
  def area(:rect, a, b) do
    a*b
  end

  def area(:square, a) do
    a*a
  end

  def area(:circle, r) do
    r * r * :math.pi()
  end
end

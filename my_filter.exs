defmodule Filter do
  def my_filter(:rect, a, b) do
    a*b
  end

  def my_filter(:square, a) do
    a*a
  end

  def my_filter(:circle, r) do
    r * r * :math.pi()
  end
end

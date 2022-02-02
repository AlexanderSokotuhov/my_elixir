defmodule RationalNumbers do
  @type rational :: {integer, integer}

  @doc """
  Add two rational numbers
  """
  @spec add(a :: rational, b :: rational) :: rational
  def add(a, b) do
    r = {elem(a, 0)*elem(b,1) + elem(a,1)*elem(b,0), elem(a,1) * elem(b,1)}
      if r == {0, 4} do
           r = {0,1}
           reduce(r)
      else
        reduce(r)
      end
  end

  @doc """
  Subtract two rational numbers
  """
  @spec subtract(a :: rational, b :: rational) :: rational
  def subtract(a, b) do
r = {elem(a, 0)*elem(b,1) - elem(a,1)*elem(b,0), elem(a,1) * elem(b,1)}
    if elem(r, 0) == 0 do
       r = {0,1}
        reduce(r)
    else
        reduce(r)
    end
  end

  @doc """
  Multiply two rational numbers
  """
  @spec multiply(a :: rational, b :: rational) :: rational
  def multiply(a, b) do
r = {elem(a, 0)*elem(b,0), elem(a,1) * elem(b,1)}
#if div(elem(r,1), elem(r,0)) == 0 do
   if elem(r, 0) == 0 do
       r = {0,1}
        reduce(r)
    else
        reduce(r)
    end

  end

  @doc """
  Divide two rational numbers
  """
  @spec divide_by(num :: rational, den :: rational) :: rational
  def divide_by(num, den) do
r = {elem(num, 0)*elem(den,1), elem(num,1) * elem(den,0)}

if elem(r, 1) < 0 do
  r = {elem(r, 0) * (-1), elem(r, 1) * (-1)}
    if elem(r, 1) < 0 and elem(r, 0) < 0 do
        r = {elem(r, 0) * (-1), elem(r, 1) * (-1)}
        reduce(r)
    end
end
   if elem(r, 0) == 0 do
       r = {0,1}
        reduce(r)
    else
        reduce(r)
    end
  end

  @doc """
  Absolute value of a rational number
  """
  @spec abs(a :: rational) :: rational
  def abs({q,w}) do
 r = {Kernel.abs(q), Kernel.abs(w)}
  end

  @doc """
  Exponentiation of a rational number by an integer
  """
  @spec pow_rational(a :: rational, n :: integer) :: rational
   def pow_rational({a, b}, n) when n >= 0 do
    reduce({Integer.pow(a, n), Integer.pow(b, n)})
  end

  def pow_rational({a, b}, n) when n < 0 do
    pow_rational({b, a}, -n)
  end


  @doc """
  Exponentiation of a real number by a rational number
  """
  @spec pow_real(x :: integer, n :: rational) :: float
  def pow_real(x, {a, b}) do
    Float.pow(x * 1.0, a) |> Float.pow(1/b)
  end


  @doc """
  Reduce a rational number to its lowest terms
  """
  #@spec reduce(a :: rational) :: rational
    def reduce({q,w}) do
      gcd = Integer.gcd(q, w)
      change_sign({trunc(q / gcd), trunc(w / gcd)})
    end

  defp change_sign({q, w}) when w > 0, do: {q, w}
  defp change_sign({q, w}) when w < 0, do: {-q, -w}
end

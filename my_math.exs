defmodule Playground do
    def start(n) do
      start = :os.system_time(:seconds)
      fib = getNumber(n)
      finish = :os.system_time(:seconds)
      diff = finish - start
      IO.puts("Fib is #{fib}")
      IO.puts("took: #{diff}")
    end

    def getNumber(0), do: 0
    def getNumber(1), do: 1
    def getNumber(n) when n < 0, do: :error
    def getNumber(n), do: getNumber(n-1) + getNumber(n-2)

  end


  Playground.start(5)

defmodule Pat do

  def count("fast", number) do
    :timer.sleep(number / 10)
    IO.puts "fast:it's done"

  end

  def count("medium", number) do
    :timer.sleep(number)
    IO.puts "medium: it's done"
  end

  def count("slow", number) do
    :timer.sleep(number *2 )
    IO.puts "slow: it's done"
  end

  def count(_, number) do
    IO.puts "I don't understand u"
  end

end
  Pat.count("slow",1_000)

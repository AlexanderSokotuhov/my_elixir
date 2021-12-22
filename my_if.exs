# defmodule Math do
#  def raket(n) do
#    IO.puts " #{n!}"
##   if n == 0 do
 #  IO.puts " Poehali!"
 #  else
 #   n - 1
  #end

 # end
# end



# Math.raket(10)


defmodule Count do
  def countdown(from) when from > 0 do
  IO.inspect(from)
  countdown(from-1)
  end
  def countdown(from) do
  IO.puts("blastoff!")
  end
  end

  Count.countdown(10)


  def do_stuff do
    IO.puts "Sum : #{sum([1,2,3])}"

    # loop(5,1)

  end


    def sum([]), do: 0

    def sum([h|t]), do: h + sum(t)

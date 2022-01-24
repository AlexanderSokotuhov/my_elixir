defmodule BirdCount do
def today([]), do: nil
  def today([head | tail]), do: head
    # Please implement the today/1 function

def increment_day_count([]), do: [1]
  def increment_day_count([head | tail]) do
    # Please implement the increment_day_count/1 function
[1 + head | tail]
  end



    def has_day_without_birds?([]), do: false
        # Please implement the has_day_without_birds?/1 function
      def has_day_without_birds?([head| tail]) when head == 0, do: true

      def has_day_without_birds?([head| tail]) when head != 0 do

        has_day_without_birds?(tail)

    end



  def total([]), do: 0

  def total([head | tail]) do
    head + total(tail)
    # Please implement the total/1 function
  end


def busy_days(list) do
  count = 0
busy_days(list, 0)
end

defp busy_days([], count), do: count

defp busy_days([head | tail], count) do
  if head >= 5 do
   busy_days(tail, count+1)

else
 busy_days(tail, count)
end
end
end

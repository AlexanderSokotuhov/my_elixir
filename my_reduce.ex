list = [1,2,3,4,5]

Enum.reduce(list, fn x, acc -> x * acc end)

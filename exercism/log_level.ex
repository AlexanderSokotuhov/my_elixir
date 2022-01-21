defmodule LogLevel do
  def to_label(level, legacy?) do
    # Please implement the to_label/2 function
cond do
(level == 0 and legacy? == false) -> :trace
#(level == 0 and legacy? == true) -> :unknown
level == 1  -> :debug
level == 2  -> :info
level == 3  -> :warning
level == 4  -> :error
(level == 5 and legacy? == false) -> :fatal
true -> :unknown
end
  end

  def alert_recipient(level, legacy?) do
    # Please implement the alert_recipient/2 function
cond do
level == 5 and legacy? == false -> :ops
level == 4 -> :ops
level  == 1  and legacy? == true  -> nil
level  == 2  and legacy? == true  -> nil
level  == 3  and legacy? == true  -> nil
#level  == 0  and legacy? == true  -> nil

legacy? == true -> :dev1
level == 6 and legacy? == false -> :dev2
true ->
end
end
end

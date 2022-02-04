defmodule RPG.CharacterSheet do
  def welcome() do
   IO.puts("Welcome! Let's fill out your character sheet together.")
  end

  def ask_name() do
   IO.gets("What is your character's name?\n")
      |> String.trim()
  end

  def ask_class() do
    IO.gets("What is your character's class?\n")
      |> String.trim()
  end

  def ask_level() do
    IO.gets("What is your character's level?\n")
      |> String.trim()
      |> String.to_integer()
  end

  def run() do
welcome()
ask_n = ask_name()
ask_c = ask_class()
ask_l = ask_level()
my_map = %{class: ask_c, level: ask_l, name: ask_n}
IO.inspect(my_map, label: "Your character")
  end
end

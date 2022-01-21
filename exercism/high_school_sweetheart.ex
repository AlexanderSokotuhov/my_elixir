defmodule HighSchoolSweetheart do
  def first_letter(name) do
    # Please implement the first_letter/1 function
String.trim_leading(name) |>  String.first()
  end

  def initial(name) do
    # Please implement the initial/1 function
String.upcase(first_letter(name)) <> "."
  end

  def initials(full_name) do
    # Please implement the initials/1 function

my_list = [head | tail] = String.split(full_name)
my_tail = List.to_string(tail) |>String.first()
my_head = String.first(head)
my_head <> "." <> " " <> my_tail  <> "."
end

  def pair(full_name1, full_name2) do
"""
     ******       ******
   **      **   **      **
 **         ** **         **
**            *            **
**                         **
**     #{initials(full_name1)}  #{"+"}  #{initials(full_name2)}     **
 **                       **
   **                   **
     **               **
       **           **
         **       **
           **   **
             ***
              *
"""


    # Please implement the pair/2 function
  end
end

defmodule NameBadge do

  def print(nil, name, nil) do
   "#{name}" <> " - " <>  "OWNER"
  end

  def print(_id, name, nil) do
    "[#{_id}]" <>  " - " <>   "#{name}" <> " - " <>  "OWNER"
  end

  def print(nil, name, department) do
    department1 = String.upcase(department)
    "#{name}" <> " - " <>  "#{department1}"
  end


  def print(id, name, department) do
    department1 = String.upcase(department)

    "[#{id}]" <>  " - " <> "#{name}" <> " - " <>  "#{department1}"
  end
end

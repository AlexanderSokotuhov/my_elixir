defmodule KitchenCalculator do

  def get_volume(volume_pair) do
    # Please implement the get_volume/1 function
elem(volume_pair, 1)

  end

  def to_milliliter(volume_pair) do
    # Please implement the to_milliliter/1 functions
case volume_pair do
  {:milliliter, _} -> {:milliliter,  elem(volume_pair, 1)}
  {:cup, _} -> {:milliliter,  240 * elem(volume_pair, 1)}
{:fluid_ounce, _} -> {:milliliter, 30 * elem(volume_pair, 1)  }
{:teaspoon, _} -> {:milliliter, 5 * elem(volume_pair, 1)}
{:tablespoon, _} -> {:milliliter, 15 * elem(volume_pair, 1)}
end
  end

  def from_milliliter(volume_pair, unit) do
    # Please implement the from_milliliter/2 functions
case volume_pair do
  {:milliliter, _}  ->
  case unit do
:milliliter -> {unit, elem(volume_pair, 1) }
:cup -> {unit, elem(volume_pair, 1) / 240}
:fluid_ounce -> {unit, elem(volume_pair, 1) / 30}
:teaspoon -> {unit, elem(volume_pair, 1) / 5}
:tablespoon -> {unit, elem(volume_pair, 1) / 15}
end
end



  end

  def convert(volume_pair, unit) do
    # Please implement the convert/2 function
        case volume_pair do
          {:milliliter, _}  ->
          case unit do
            :milliliter -> {unit, elem(volume_pair, 1) }
            :cup -> {unit, elem(volume_pair, 1) / 240}
            :fluid_ounce -> {unit, elem(volume_pair, 1) / 30}
            :teaspoon -> {unit, elem(volume_pair, 1) / 5}
            :tablespoon -> {unit, elem(volume_pair, 1) / 15}
          end

          {:cup, _}  ->
            case unit do
              :cup -> {unit, elem(volume_pair, 1)}
              :fluid_ounce -> {unit, elem(volume_pair, 1) * 8}
            end

           {:teaspoon, _}  ->
              case unit do
                 :tablespoon -> {unit, elem(volume_pair, 1)/3}
              end

          {:fluid_ounce, _}  ->
              case unit do
                 :teaspoon -> {unit, elem(volume_pair, 1) * 6}
              end
           {:tablespoon, _}  ->
              case unit do
                 :cup -> {unit, elem(volume_pair, 1) / 16}
              end
        end

  end
end

defmodule SpaceAge do
  @type planet ::
          :mercury
          | :venus
          | :earth
          | :mars
          | :jupiter
          | :saturn
          | :uranus
          | :neptune

  @doc """
  Return the number of years a person that has lived for 'seconds' seconds is
  aged on 'planet', or an error if 'planet' is not a planet.
  """
  @spec age_on(planet, pos_integer) :: {:ok, float} | {:error, String.t()}
  def age_on(planet, seconds) do
    earth_age = seconds / (365.25 * 24 * 60 * 60 )
    planet_list = %{:earth => 0,  :mercury => 0.2408467, :venus => 0.61519726, :mars => 1.8808158, :jupiter =>11.862615, :saturn => 29.447498, :uranus => 84.016846, :neptune => 164.79132}
# I was trying to make throug key-value and no success. will try late.
# %{^key => value }
    # , ":mercury", ":venus", ":mars", ":jupiter", ":neptune", ":saturn", ":uranus"
     # for planet <- planet_list do
      if planet in Map.keys(planet_list) do
     age = case planet do
          :earth -> earth_age
          :mercury -> earth_age  / 0.2408467
          :venus -> earth_age  / 0.61519726
          :mars -> earth_age  / 1.8808158
          :jupiter -> earth_age  / 11.862615
          :saturn -> earth_age / 29.447498
          :uranus -> earth_age / 84.016846
          :neptune -> earth_age  / 164.79132
        end
    {:ok, age}
    else
  {:error, "not a planet"}
    end
  end
end

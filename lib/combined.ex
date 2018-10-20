defmodule Combined do
  def height_to_mph(meters) do
    meters
    |> Drop.fall_velocity
    |> Convert.mps_to_mph
  end
end

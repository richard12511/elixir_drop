defmodule Combined do
  import Convert
  import Drop

  def height_to_mph(meters) do
    meters
    |> fall_velocity(9.8)
    |> mps_to_mph
  end
end

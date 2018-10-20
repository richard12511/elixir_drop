defmodule Combined do
  import Convert
  import Drop

  def height_to_mph(meters) do
    {:earth, meters}
    |> fall_velocity
    |> mps_to_mph
  end
end

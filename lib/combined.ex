defmodule Combined do
  import Convert
  import Drop

  def height_to_mph(meters) do
    fall_velocity(:earth, meters)
    |> mps_to_mph
  end
end

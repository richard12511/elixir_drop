defmodule Drop do
  def fall_velocity(distance, gravity) do
    :math.sqrt(2 * gravity * distance)
  end
end

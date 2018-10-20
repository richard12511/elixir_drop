defmodule Drop do
  def fall_velocity(planemo, distance) do
    case planemo do
      :earth -> :math.sqrt(2 * 9.8 * distance)
      :moon -> :math.sqrt(2 * 1.6 * distance)
      :mars -> :math.sqrt(2 * 3.71 * distance)
    end
  end
end

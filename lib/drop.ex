defmodule Drop do

  def drop do
      receive do
        {from, planemo, distance} ->
          send(from, {planemo, distance, fall_velocity(planemo, distance)})
          drop()
      end

  end

  def fall_velocity(planemo, distance) do
    try do
      gravity = case planemo do
        :earth -> 9.8
        :moon -> 1.6
        :mars -> 3.71
      end
      :math.sqrt(2 * gravity * distance)
    rescue
      ArithmeticError -> {:error, "Distance must be non-negative"}
      CaseClauseError -> {:error, "Unknown planemo #{planemo}"}
    end
  end

end

defmodule Drop do
  require Planemo

  def drop do
    # setup
    handle_drops()
  end

  def handle_drops do
    receive do
      {from, planemo, distance} ->
        send(from, {planemo, distance, fall_velocity(planemo, distance)})
        handle_drops()
    end

  end

  def fall_velocity(planemo, distance) when distance >= 0 do
    planemo = :ets.lookup(:planemos, planemo) |> hd
    gravity = Planemo.planemo(planemo, :gravity)
    :math.sqrt(2 * gravity * distance)
  end

  # def setup do
  #   :ets.new(:planemos, [:named_table, {:keypos, Planemo.planemo(:name) + 1}])
  #   info = [
  #     {:mercury, 57.9, 4878, 3.7},
  #     {:venus, 57.9, 4878, 8.9},
  #     {:earth, 57.9, 4878, 9.8},
  #     {:mars, 57.9, 4878, 3.7},
  #     {:jupiter, 57.9, 4878, 23.1},
  #     {:saturn, 57.9, 4878, 9.0},
  #     {:uranus, 57.9, 4878, 8.7},
  #     {:neptune, 57.9, 4878, 11.0},
  #     {:pluto, 57.9, 4878, 0.6}
  #   ]
  #
  #   insert_into_table(info)
  # end
  #
  # def insert_into_table([]) do
  #   :undefined
  # end
  #
  # def insert_into_table([{name, distance, diameter, gravity} | tail]) do
  #   :ets.insert(:planemos, Planemo.new(name: name, gravity: gravity, diameter: diameter, distance_from_sun: distance))
  #   insert_into_table(tail)
  # end

end

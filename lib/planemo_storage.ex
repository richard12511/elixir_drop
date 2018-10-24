defmodule PlanemoStorage do
  require Planemo

  def setup do
    planemo_table = :ets.new(:planemos, [:named_table, {:keypos, Planemo.planemo(:name) + 1}])

    :ets.insert :planemos, Planemo.planemo(name: :mercury, gravity: 3.7, diameter: 4878, distance_from_sun: 57.9)
    :ets.insert :planemos, Planemo.planemo(name: :venus, gravity: 8.9, diameter: 4878, distance_from_sun: 57.9)
    :ets.insert :planemos, Planemo.planemo(name: :earth, gravity: 9.8, diameter: 4878, distance_from_sun: 57.9)
    :ets.insert :planemos, Planemo.planemo(name: :mars, gravity: 3.71, diameter: 4878, distance_from_sun: 57.9)
    :ets.insert :planemos, Planemo.planemo(name: :jupiter, gravity: 23.1, diameter: 4878, distance_from_sun: 57.9)
    :ets.insert :planemos, Planemo.planemo(name: :saturn, gravity: 9.0, diameter: 4878, distance_from_sun: 57.9)
    :ets.insert :planemos, Planemo.planemo(name: :uranus, gravity: 8.7, diameter: 4878, distance_from_sun: 57.9)
    :ets.insert :planemos, Planemo.planemo(name: :neptune, gravity: 11.0, diameter: 4878, distance_from_sun: 57.9)
    :ets.insert :planemos, Planemo.planemo(name: :pluto, gravity: 0.6, diameter: 4878, distance_from_sun: 57.9)

    :ets.info planemo_table

  end

end

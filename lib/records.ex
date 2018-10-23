defmodule Planemo do
  require Record

  Record.defrecord :planemo, [name: nil, distance_from_sun: 0, diameter: 0, gravity: 0]
end

defmodule Tower do
  require Record

  Record.defrecord :tower, Tower, [location: "", height: 0, planemo: :earth, name: ""]
end

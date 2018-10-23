defprotocol Valid do
  @doc "Returns true if data is considered nominally valid"
  def valid?(data)
end

defimpl Valid, for: Planemo  do
  def valid?(p) do
    p.gravity >= 0 and p.diameter >= 0 and p.distance_from_sun >= 0
  end
end

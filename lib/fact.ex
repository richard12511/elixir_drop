defmodule Fact do
  def factorial(number) when number > 1 do
    number * factorial(number-1)
  end

  def factorial(_) do
    1
  end

end

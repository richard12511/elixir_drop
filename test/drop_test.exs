defmodule DropTest do
  use ExUnit.Case, async: true

  setup_all do
    IO.puts("Seting up all tests")

    on_exit fn ->
      IO.puts("All tests finished")
    end

    {:ok, [connection: :fake_PID]}
  end

  test "Zero distance gives zero velocity" do
    assert Drop.fall_velocity(:earth, 0) == 0
  end

  test "Mars calculation is correct" do
    assert Drop.fall_velocity(:mars, 10) == :math.sqrt(2 * 3.71 * 10)
  end

  test "Earth calculation is correct" do
    velocity = Drop.fall_velocity(:earth, 1)
    assert_in_delta velocity, 4.4, 0.05, "The calculated velocity was not within 0.05 of the expected velocity"
  end

  test "Unknown planemo causes error" do
    assert_raise CaseClauseError, fn -> Drop.fall_velocity(:jupiter, 10) end
  end

  test "Negative distance causes error" do
    assert_raise ArithmeticError, fn -> Drop.fall_velocity(:earth, -10) end
  end
end

defmodule Bounce do
  def report(count) do
    new_count = receive do
      msg -> IO.puts("Received count: #{count}, msg: #{msg}")
      count + 1
    end
    report(new_count)
  end
end

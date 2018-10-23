defmodule MphDrop do
  def mph_drop do
    Process.flag(:trap_exit, true)
    drop_pid = spawn_link(Drop, :drop, [])
    convert(drop_pid)
  end

  defp convert(drop_pid) do
    receive do
      {planemo, distance} ->
        send(drop_pid, {self(), planemo, distance})
        convert(drop_pid)

      {:EXIT, _pid, _reason} ->
        new_drop_pid = spawn_link(Drop, :drop, [])
        convert(new_drop_pid)

      {planemo, distance, velocity} ->
        mph_velocity = 2.23693629 * velocity
        IO.puts("On #{planemo}, dropping from #{distance} meters, yields a velocity of #{mph_velocity}mph.")
        convert(drop_pid)
    end

  end
end

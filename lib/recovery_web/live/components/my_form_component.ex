defmodule RecoveryWeb.MyFormComponent do
  use RecoveryWeb, :live_component

  def handle_event("suggest", params, socket) do
    IO.inspect(params, label: "suggest(), params")

    {:noreply, socket}
  end

  def handle_event("other_action", params, socket) do
    IO.inspect(params, label: "other_action(), params")

    {:noreply, socket}
  end
end

defmodule RecoveryWeb.RootLive do
  use RecoveryWeb, :live_view

  alias RecoveryWeb.MyFormComponent

  def mount(_session, _params, socket),
    do: {:ok, assign(socket, query: "")}
end

defmodule RecoveryWeb.Router do
  use RecoveryWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {RecoveryWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", RecoveryWeb do
    pipe_through :browser

    live "/", RootLive
  end

  # Other scopes may use custom stacks.
  # scope "/api", RecoveryWeb do
  #   pipe_through :api
  # end
end

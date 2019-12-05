defmodule LunaWeb.Router do
  use LunaWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", LunaWeb do
    pipe_through :api
  end
end

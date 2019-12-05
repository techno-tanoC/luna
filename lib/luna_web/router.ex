defmodule LunaWeb.Router do
  use LunaWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LunaWeb do
    pipe_through :api
    post "/", HomeController, :index
  end
end

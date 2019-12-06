defmodule LunaWeb.HomeController do
  use LunaWeb, :controller

  def index(conn, params) do
    res = Luna.index(params)
    render(conn, "index.json", %{res: res})
  end
end

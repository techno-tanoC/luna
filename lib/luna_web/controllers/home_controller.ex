defmodule LunaWeb.HomeController do
  use LunaWeb, :controller

  def index(conn, params) do
    case Luna.index(params) do
      {:ok, res} ->
        render(conn, "index.json", %{res: res})

      {:error, message} ->
        render(conn, "error.json", %{message: message})
    end
  end
end

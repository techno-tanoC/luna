defmodule LunaWeb.HomeView do
  use LunaWeb, :view
  alias Luna.Rainfall.Response, as: Rainfall

  def render("index.json", %{res: res}) do
    res
  end
end

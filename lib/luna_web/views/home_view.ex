defmodule LunaWeb.HomeView do
  use LunaWeb, :view

  def render("index.json", %{res: res}) do
    res
  end
end

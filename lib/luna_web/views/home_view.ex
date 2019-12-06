defmodule LunaWeb.HomeView do
  use LunaWeb, :view
  alias Luna.Rainfall.Response, as: Rainfall

  def render("index.json", %{res: res}) do
    res
  end

  def render("error.json", %{message: message}) do
    Luna.Block.image(
      "https://dcdn.cdn.nimg.jp/niconews/articles/images/3255156/73f10412bdae89d4e106ab8e2bb86c9bbcaffa377ebb9ac97d05302de85de031de6261927272a6de54c6b779c5c1785f8f7b996f985a9f2322aa280908e15195",
      message
    )
  end
end

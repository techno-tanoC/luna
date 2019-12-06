defmodule Luna do
  def index(%{"text" => "rainfall" <> _}) do
    case Luna.Rainfall.Action.make_url() do
      {:ok, url} ->
        Luna.Rainfall.Template.build(url)

      {:error, message} ->
        error_template(message)
    end
  end

  def index(%{"text" => "now" <> _}) do
    case Luna.Now.Action.now() do
      {:ok, message} ->
        Luna.Now.Template.build(message)

      {:error, message} ->
        error_template(message)
    end
  end

  def error_template(message) do
    Luna.Block.image(
      "https://dcdn.cdn.nimg.jp/niconews/articles/images/3255156/73f10412bdae89d4e106ab8e2bb86c9bbcaffa377ebb9ac97d05302de85de031de6261927272a6de54c6b779c5c1785f8f7b996f985a9f2322aa280908e15195",
      message
    )
  end
end

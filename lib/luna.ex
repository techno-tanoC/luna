defmodule Luna do
  def index(%{"text" => "rainfall" <> _}) do
    case Luna.Rainfall.Action.make_url() do
      {:ok, url} ->
        res = Luna.Rainfall.Template.build(url)
        {:ok, res}

      {:error, message} ->
        {:error, message}
    end
  end

  def index(%{"text" => "now" <> _}) do
    case Luna.Now.Action.now() do
      {:ok, url} ->
        res = Luna.Now.Template.build(url)
        {:ok, res}

      {:error, message} ->
        {:error, message}
    end
  end
end

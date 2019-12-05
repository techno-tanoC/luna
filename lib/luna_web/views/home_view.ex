defmodule LunaWeb.HomeView do
  use LunaWeb, :view
  alias Luna.Rainfall.Response, as: Rainfall

  def render("index.json", %{res: res}) do
    res
  end

  def render("error.json", %{message: message}) do
    %{
      blocks: [
        %{
          type: "section",
          text: %{
            type: "plain_text",
            text: message
          }
        }
      ]
    }
  end
end

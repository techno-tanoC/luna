defmodule Luna.Rainfall.Template do
  import Luna.Block

  def build(url) do
    %{
      blocks: [
        plain_text_selction("東京の雨雲レーダーだよおおおおおおおおおおおおおお！！！！"),
        image(url, "radar")
      ]
    }
  end
end

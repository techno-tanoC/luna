defmodule Luna.Rainfall.Template do
  def build(url) do
    %{
      blocks: [
        %{
          type: "section",
          text: %{
            type: "plain_text",
            text: "東京の雨雲レーダーだよおおおおおおおおおおおおおお！！！！"
          }
        },
        %{
          type: "image",
          title: %{
            type: "plain_text",
            text: "radar",
            emoji: false
          },
          image_url: url,
          alt_text: "radar"
        }
      ]
    }
  end
end

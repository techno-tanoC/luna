defmodule Luna.Block do
  def plain_text_selction(text, emoji \\ true) do
    %{
      type: "section",
      text: %{
        type: "plain_text",
        text: text,
        emoji: emoji
      }
    }
  end

  def image(url, text, alt_text \\ nil, emoji \\ true) do
    alt = alt_text || text

    %{
      type: "image",
      title: %{
        type: "plain_text",
        text: text,
        emoji: emoji
      },
      image_url: url,
      alt_text: alt
    }
  end
end

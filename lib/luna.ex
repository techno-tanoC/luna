defmodule Luna do
  def index(%{"text" => "rainfall" <> _}) do
    case Luna.Rainfall.Action.make_url() do
      {:ok, url} ->
        response = Luna.Rainfall.Template.build(url)
        {:ok, response}

      {:error, message} ->
        {:error, message}
    end
  end

  def index(%{"text" => "now" <> _}) do
    case DateTime.now("Asia/Tokyo") do
      {:ok, dt} ->
        message = "今は#{dt.year}年#{dt.month}月#{dt.day}日#{dt.hour}時#{dt.minute}分だよおおおおおおお！！！"

        res = %{
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

        {:ok, res}

      {:error, _} ->
        {:error, "時刻の取得に失敗ちゃった！ヘケッ"}
    end
  end
end

defmodule Luna.Now.Action do
  def now() do
    case DateTime.now("Asia/Tokyo") do
      {:ok, dt} ->
        message = "今は#{dt.year}年#{dt.month}月#{dt.day}日#{dt.hour}時#{dt.minute}分だよおおおおおおお！！！"
        {:ok, message}

      {:error, _} ->
        {:error, "時刻の取得に失敗ちゃった！ｗ"}
    end
  end
end

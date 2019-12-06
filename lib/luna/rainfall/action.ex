defmodule Luna.Rainfall.Action do
  def make_url() do
    case now() do
      {:ok, datetime} ->
        dt = DateTime.add(datetime, -180, :second)
        minute = dt.minute - rem(dt.minute, 5)
        url = format_url(dt.year, dt.month, dt.day, dt.hour, minute)
        {:ok, url}

      {:error, message} ->
        {:error, message}
    end
  end

  def now() do
    case DateTime.now("Asia/Tokyo") do
      {:ok, datetime} ->
        {:ok, datetime}

      {:error, _} ->
        {:error, "時間の取得に失敗しちゃった！ｗ"}
    end
  end

  def format_url(year, month, day, hour, minute) do
    [m, d, h, min] =
      [month, day, hour, minute]
      |> Enum.map(&(&1 |> Integer.to_string() |> String.pad_leading(2, "0")))

    "https://static.tenki.jp/static-images/radar/#{year}/#{m}/#{d}/#{h}/#{min}/00/pref-16-large.jpg"
  end
end

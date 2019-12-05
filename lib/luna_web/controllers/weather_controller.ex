defmodule LunaWeb.WeatherController do
  use LunaWeb, :controller

  def index(conn, _params) do
    case make_url() do
      {:ok, url} ->
        render(conn, "index.json", url: url)
    end
  end

  def make_url() do
    case DateTime.now("Asia/Tokyo") do
      {:ok, dt} ->
        buffed_dt = DateTime.add(dt, -180, :second)
        IO.inspect(buffed_dt)
        minute = buffed_dt.minute - rem(buffed_dt.minute, 5)
        IO.inspect(minute)
        format_url(buffed_dt.year, buffed_dt.month, buffed_dt.day, buffed_dt.hour, minute)
    end
  end

  def format_url(year, month, day, hour, minute) do
    [m, d, h, min] = [month, day, hour, minute] |> Enum.map(& &1 |> Integer.to_string() |> String.pad_leading(2, "0"))
    "https://static.tenki.jp/static-images/radar/#{year}/#{m}/#{d}/#{h}/#{min}/00/pref-16-large.jpg"
  end
end

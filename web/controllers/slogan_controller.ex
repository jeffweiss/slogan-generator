defmodule SloganGenerator.SloganController do
  use SloganGenerator.Web, :controller

  @external_resource "slogans.txt"

  @slogans File.stream!("slogans.txt")
    |> Stream.map(&String.strip/1)
    |> Enum.to_list

  def show(conn, %{"id" => name}) do
    :random.seed(:os.timestamp)
    slogan =
      @slogans
      |> Enum.random
      |> String.replace("{}", name)

    text conn, slogan
  end
end

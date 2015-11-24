defmodule SloganGenerator.PageController do
  use SloganGenerator.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

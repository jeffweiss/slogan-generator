defmodule SloganGenerator.PageControllerTest do
  use SloganGenerator.ConnCase

  test "GET /" do
    conn = get conn(), "/"
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end

defmodule BerWeb.PageControllerTest do
  use BerWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    html = html_response(conn, 200)

    for %{name: name} <- Ber.get_links() do
      assert html =~ name
    end
  end
end

defmodule BerWeb.PageViewTest do
  use BerWeb.ConnCase, async: true

  import Phoenix.View

  alias BerWeb.PageView

  test "renders all links properly" do
    page =
      render_to_string(PageView, "index.html",
        links: [
          %{name: "GitHub", url: "https://github.com/bamorim"},
          %{name: "MySite", url: "https://mysite.com"}
        ]
      )

    assert {:ok, html} = Floki.parse_document(page)
    assert html |> Floki.find(~s(a[href="https://github.com/bamorim")) |> Floki.text() =~ "GitHub"
    assert [_ | _] = Floki.find(html, ~s(a[href="https://mysite.com"))
  end
end

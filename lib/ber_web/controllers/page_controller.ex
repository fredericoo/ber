defmodule BerWeb.PageController do
  use BerWeb, :controller

  def index(conn, _params) do
    links = Ber.get_links()

    render(conn, "index.html", links: links)
  end
end

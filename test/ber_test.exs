defmodule BerTest do
  use ExUnit.Case

  test "returns a list of links" do
    assert [_ | _] = links = Ber.get_links()

    for link <- links do
      assert %{name: "" <> _, url: "" <> _} = link
    end
  end
end

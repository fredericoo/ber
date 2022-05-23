defmodule Ber do
  @moduledoc """
  For now I'm keeping all the functions in this module instead of going the
  traditional "contexts" route because this app is really simple now.
  """

  @type link() :: %{
          name: String.t(),
          url: String.t()
        }

  def get_links do
    [
      %{
        name: "GitHub",
        url: "https://github.com/bamorim/"
      },
      %{
        name: "LinkedIn",
        url: "https://www.linkedin.com/in/bdornellas/"
      },
      %{
        name: "Twitter",
        url: "https://twitter.com/BernardoDCGA/"
      },
      %{
        name: "Twitch",
        url: "https://www.twitch.tv/bdornellas"
      },
      %{
        name: "Blog",
        url: "https://listed.to/@bamorim"
      }
    ]
  end
end

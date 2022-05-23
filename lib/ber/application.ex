defmodule Ber.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      BerWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Ber.PubSub},
      # Start the Endpoint (http/https)
      BerWeb.Endpoint
      # Start a worker by calling: Ber.Worker.start_link(arg)
      # {Ber.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Ber.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    BerWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end

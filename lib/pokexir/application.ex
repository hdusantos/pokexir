defmodule Pokexir.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Pokexir.Repo,
      # Start the Telemetry supervisor
      PokexirWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Pokexir.PubSub},
      # Start the Endpoint (http/https)
      PokexirWeb.Endpoint
      # Start a worker by calling: Pokexir.Worker.start_link(arg)
      # {Pokexir.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Pokexir.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    PokexirWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end

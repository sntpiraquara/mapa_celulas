defmodule MapaCelulas.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Start the Ecto repository
      MapaCelulas.Repo,
      # Start the endpoint when the application starts
      MapaCelulasWeb.Endpoint
      # Starts a worker by calling: MapaCelulas.Worker.start_link(arg)
      # {MapaCelulas.Worker, arg},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: MapaCelulas.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    MapaCelulasWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end

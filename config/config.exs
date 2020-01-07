# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :mapa_celulas,
  ecto_repos: [MapaCelulas.Repo]

# Configures the endpoint
config :mapa_celulas, MapaCelulasWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "m7iEdaBRe2Ys36KE3yy5LOWabTLNFkRPLxvuoR1b+9YYmfE8xp7Jkvrra9dBwrnC",
  render_errors: [view: MapaCelulasWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MapaCelulas.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

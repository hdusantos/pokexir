# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :pokexir,
  ecto_repos: [Pokexir.Repo]

# Configures the endpoint
config :pokexir, PokexirWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WOgt5/Y9jUPXzAyQQs2R6cUWznGb81cH7p7dZ+Eor3INaBaZurNEMbS99OP/XFUC",
  render_errors: [view: PokexirWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Pokexir.PubSub,
  live_view: [signing_salt: "RvqEbDzb"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

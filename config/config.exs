# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

# Configures the endpoint
config :luna, LunaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WbclG/jlU64kr8GtEpaj4fm4AuLsZ7GazXmLCLzLn9MIATQVlvJE9hSkWOHmfCYq",
  render_errors: [view: LunaWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Luna.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :elixir, :time_zone_database, Tzdata.TimeZoneDatabase

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

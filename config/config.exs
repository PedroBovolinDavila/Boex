# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :boex,
  ecto_repos: [Boex.Repo]

config :boex, Boex.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foregin_key: [type: :binary_id]

# Configures the endpoint
config :boex, BoexWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: BoexWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Boex.PubSub,
  live_view: [signing_salt: "/dgY5JFy"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"

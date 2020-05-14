# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :learning_platform,
  ecto_repos: [LearningPlatform.Repo]

# Configures the endpoint
config :learning_platform, LearningPlatformWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "DxlrcqGOi/PAlipiddj3prSD6fYOFu1c1VxKl8InyUAz0ChxM/9WJykyTtlE8w5B",
  render_errors: [view: LearningPlatformWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LearningPlatform.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

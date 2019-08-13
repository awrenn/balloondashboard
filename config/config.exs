# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :balloondashboard,
  ecto_repos: [Balloondashboard.Repo]

# Configures the endpoint
config :balloondashboard, BalloondashboardWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mTBWJo3//euYh8jVze55ycT7kDwEE6CrI9p5LpnDx4iQl1/r/YBY/4s61KYNeUOQ",
  render_errors: [view: BalloondashboardWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Balloondashboard.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "ul/StpsQ4Kv8TigQxUb5ZEX7fFdpnKcI4RvMxy0MFb3oPrMNb0cysa7bGoPUsq54"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :phoenix,
  template_engines: [leex: Phoenix.LiveView.Engine]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

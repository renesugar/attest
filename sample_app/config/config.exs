# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :sample_app,
  ecto_repos: [SampleApp.Repo]

# Configures the endpoint
config :sample_app, SampleAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MGnQWpQgTohIGp+DQlSKzc6vFQ0qC/9R9FG8+e9HNDuHHO5g9mhdJkklZOrP9yyG",
  render_errors: [view: SampleAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SampleApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :attest,
  base: SampleApp,
  repo: SampleApp.Repo,
  resources: %{user_page: :user}

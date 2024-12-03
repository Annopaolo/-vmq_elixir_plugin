import Config

config :logger, :default_handler, false

import_config "#{config_env()}.exs"

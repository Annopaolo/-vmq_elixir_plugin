import Config

config :logger, :default_handler, false

config :logger,
  compile_time_purge_matching: [
    [level_lower_than: :info]
  ]

config :logger, :console,
  format: {PrettyLog.LogfmtFormatter, :format},
  metadata: [:module, :function, :tag]

import_config "#{config_env()}.exs"

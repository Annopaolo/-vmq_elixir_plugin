defmodule VmqElixirPlugin.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false


  require Logger
  use Application

  @app_version Mix.Project.config()[:version]

  def start(_type, _args) do
    :logger.info("Starting Elixir plugin v#{@app_version}.")

    # LoggerBackends.add(MyCustomBackend)
    # LoggerBackends.remove(:default)
    # LoggerBackends.remove(:ssl_handler)
    # LoggerBackends.remove(:console)

    children = [
      # Starts a worker by calling: Aaaa.Worker.start_link(arg)
      # {Aaaa.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: VmqElixirPlugin.Supervisor]
    :logger.info("Here too")

    res = Supervisor.start_link(children, opts)

    :logger.info("Finally here")
    res
  end
end

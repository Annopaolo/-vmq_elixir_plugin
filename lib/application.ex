defmodule VmqElixirPlugin.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  require Logger

  @app_version Mix.Project.config()[:version]

  def start(_type, _args) do
    Logger.info("Starting Elixir plugin v#{@app_version}.")

    children = [
      # Starts a worker by calling: Aaaa.Worker.start_link(arg)
      # {Aaaa.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: VmqElixirPlugin.Supervisor]
    IO.puts("Here too")

    res = Supervisor.start_link(children, opts)

    IO.puts("Finally here")
    res
  end
end

defmodule VmqElixirPlugin.MixProject do
  use Mix.Project

  def project do
    [
      app: :vmq_elixir_plugin,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {VmqElixirPlugin.Application, []},
      extra_applications: [:logger],
      env: [
        vmq_plugin_hooks: [
          {:auth_on_publish, VmqElixirPlugin, :auth_on_publish, 6, []},
          {:auth_on_register, VmqElixirPlugin, :auth_on_register, 5, []},
          {:auth_on_subscribe, VmqElixirPlugin, :auth_on_subscribe, 3, []},
          {:on_client_offline, VmqElixirPlugin, :on_client_offline, 1, []},
          {:on_client_gone, VmqElixirPlugin, :on_client_gone, 1, []},
          {:on_publish, VmqElixirPlugin, :on_publish, 6, []},
          {:on_register, VmqElixirPlugin, :on_register, 3, []}
        ]
      ]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end

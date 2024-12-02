defmodule VmqElixirPluginTest do
  use ExUnit.Case
  doctest VmqElixirPlugin

  test "greets the world" do
    assert VmqElixirPlugin.hello() == :world
  end
end

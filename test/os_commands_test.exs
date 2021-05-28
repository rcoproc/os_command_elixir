defmodule OsCommandsTest do
  use ExUnit.Case
  doctest OsCommands

  test "greets the world" do
    assert OsCommands.hello() == :world
  end
end

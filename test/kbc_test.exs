defmodule KbcTest do
  use ExUnit.Case
  doctest Kbc

  test "greets the world" do
    assert Kbc.hello() == :world
  end
end

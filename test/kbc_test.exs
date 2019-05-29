defmodule KbcTest do
  use ExUnit.Case
  doctest Kbc

  test "greets the world" do
    assert Kbc.hello() == :world
  end

  test "foo" do
    state = Kbc.Quiz.new
    Kbc.Quiz.start(state)
  end
end

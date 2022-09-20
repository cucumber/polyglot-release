defmodule PolyglotReleaseTestTest do
  use ExUnit.Case
  doctest PolyglotReleaseTest

  test "greets the world" do
    assert PolyglotReleaseTest.hello() == :world
  end
end

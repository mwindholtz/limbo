defmodule Limbo.EmptyTest do
  use ExUnit.Case

  test "nothing" do
    assert true
  end

  @tag :wip
  test "skip wip" do
    assert false
  end
end

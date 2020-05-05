defmodule Rtracex.Math.PointTest do
  use ExUnit.Case
  alias Rtracex.Math.Point

  doctest Rtracex.Math.Point

  describe "creating new Point" do
    test "with new/3 function" do
      tested = Point.new(1.0, 2.0, 3.0)
      assert Point.is_a?(tested)
      assert Point.x(tested) == 1.0
      assert Point.y(tested) == 2.0
      assert Point.z(tested) == 3.0
    end
  end
end

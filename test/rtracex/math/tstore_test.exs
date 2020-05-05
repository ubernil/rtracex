defmodule Rtracex.Math.TstoreTest do
  use ExUnit.Case
  alias Rtracex.Math.{Tstore, Point, Vector}

  describe "Manually constructing primitives" do
    test "when it is point" do
      tested = {1.3, 1.2, 1.1, :point}
      assert Tstore.x(tested) == 1.3
      assert Tstore.y(tested) == 1.2
      assert Tstore.z(tested) == 1.1
      assert Point.is_a?(tested)
      refute Vector.is_a?(tested)
    end

    test "when it is vector" do
      tested = {2.3, 2.2, 2.1, :vector}
      assert Tstore.x(tested) == 2.3
      assert Tstore.y(tested) == 2.2
      assert Tstore.z(tested) == 2.1
      refute Point.is_a?(tested)
      assert Vector.is_a?(tested)
    end
  end
end

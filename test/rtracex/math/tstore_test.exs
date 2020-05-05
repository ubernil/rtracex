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

  describe "Comparing primitives" do
    test "when they are exactly equal (defined floats are equal and same type)" do
      tstore1 = {1.0, 2.0, 3.0, :point}
      tstore2 = {1.0, 2.0, 3.0, :point}

      assert Tstore.eq?(tstore1, tstore2)
    end

    test "when they are equal up to epsilon and same type (defined floats are almost equal)" do
      tstore1 = {1.0, 2.0, 3.0, :point}
      tstore2 = {1.00000000000001, 2.000000000002, 3.0000000000003, :point}

      assert Tstore.eq?(tstore1, tstore2)
    end

    test "when they are different more then epsilon but have same type" do
      tstore1 = {1.0, 2.0, 3.0, :point}
      tstore2 = {1.1, 2.2, 3.3, :point}

      refute Tstore.eq?(tstore1, tstore2)
    end

    test "when they have diffrent type" do
      tstore1 = {1.0, 2.0, 3.0, :point}
      tstore2 = {1.0, 2.0, 3.0, :vector}

      refute Tstore.eq?(tstore1, tstore2)
    end
  end
end

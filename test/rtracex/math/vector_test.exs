defmodule Rtracex.Math.VectorTest do
  use ExUnit.Case
  alias Rtracex.Math.Vector

  doctest Rtracex.Math.Vector

  describe "creating new Vector" do
    test "with new/3 function" do
      tested = Vector.new(1.0, 2.0, 3.0)
      assert Vector.is_a?(tested)
      assert Vector.x(tested) == 1.0
      assert Vector.y(tested) == 2.0
      assert Vector.z(tested) == 3.0
    end
  end
end

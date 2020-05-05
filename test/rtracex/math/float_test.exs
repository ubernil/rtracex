defmodule Rtracex.Math.FloatTest do
  use ExUnit.Case
  alias Rtracex.Math.Float

  describe "comparing for equal" do
    test "when two floats are almost equal (less then predefined epsilon)" do
      float1 = 0.15 + 0.15
      float2 = 0.1 + 0.2
      assert Float.eq?(float1, float2)
    end

    test "when two floats are not equal" do
      float1 = 0.3
      float2 = 0.4
      refute Float.eq?(float1, float2)
    end
  end
end

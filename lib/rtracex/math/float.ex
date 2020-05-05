defmodule Rtracex.Math.Float do
  @moduledoc """
  Some Float math, missing in standard lib.
  """

  # NOTE: the maximum difference between two floats before which they are considered equal.
  @machine_epsilone 0.00000001

  @doc """
  Compares two floats for equality, considers there can be difference less then some predefined EPSILON.
  If the difference is less then EPSILON than floats will be considered as equal.

  Example: eq?(1.00, 1.01) if EPSILON is 0.1, than function will return true.
  """
  @spec eq?(float(), float()) :: boolean()
  def eq?(float1, float2) do
    abs(float1 - float2) < @machine_epsilone
  end
end

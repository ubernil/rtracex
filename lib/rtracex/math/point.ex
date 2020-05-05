defmodule Rtracex.Math.Point do
  @moduledoc """
  An internal representation of a point in space.
  """
  alias Rtracex.Math.Tstore

  @type t :: {
          # X coordinate
          float(),
          # Y coordinate
          float(),
          # Z coordinate
          float(),
          # A type of primitive object
          :point
        }

  @doc """
  Checks if a given Tstore object is a point.

  iex> Rtracex.Math.Point.is_a?({0.0, 0.0, 0.0, :point})
  true

  iex> Rtracex.Math.Point.is_a?({0.0, 0.0, 0.0, :vector})
  false
  """
  @spec is_a?(__MODULE__.t() | Tstore.t()) :: boolean()
  def is_a?({_x, _y, _z, :point}), do: true
  def is_a?({_x, _y, _z, _any_other}), do: false
end

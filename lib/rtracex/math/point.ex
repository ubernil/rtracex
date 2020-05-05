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
  Creates new point with it's coordinates.
  """
  @spec new(float(), float(), float()) :: __MODULE__.t()
  def new(x, y, z), do: {x, y, z, :point}

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

  @spec x(__MODULE__.t()) :: float()
  defdelegate x(point), to: Rtracex.Math.Tstore

  @spec y(__MODULE__.t()) :: float()
  defdelegate y(point), to: Rtracex.Math.Tstore

  @spec z(__MODULE__.t()) :: float()
  defdelegate z(point), to: Rtracex.Math.Tstore
end

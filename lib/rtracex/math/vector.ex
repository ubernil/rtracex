defmodule Rtracex.Math.Vector do
  @moduledoc """
  An internal representation of a vector in space.
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
          :vector
        }

  @doc """
  Creates new point with it's coordinates.
  """
  @spec new(float(), float(), float()) :: __MODULE__.t()
  def new(x, y, z), do: {x, y, z, :vector}

  @doc """
  Checks if a given Tstore object is a vector.

  iex> Rtracex.Math.Vector.is_a?({0.0, 0.0, 0.0, :vector})
  true

  iex> Rtracex.Math.Vector.is_a?({0.0, 0.0, 0.0, :point})
  false
  """
  @spec is_a?(__MODULE__.t() | Tstore.t()) :: boolean()
  def is_a?({_x, _y, _z, :vector}), do: true
  def is_a?({_x, _y, _z, _any_other}), do: false

  @spec x(__MODULE__.t()) :: float()
  defdelegate x(point), to: Rtracex.Math.Tstore

  @spec y(__MODULE__.t()) :: float()
  defdelegate y(point), to: Rtracex.Math.Tstore

  @spec z(__MODULE__.t()) :: float()
  defdelegate z(point), to: Rtracex.Math.Tstore
end

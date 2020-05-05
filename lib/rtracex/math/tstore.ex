defmodule Rtracex.Math.Tstore do
  @moduledoc """
  An internal representation of primitive objects such as point an vector.
  """

  @type t :: {
          # X coordinate
          float(),
          # Y coordinate
          float(),
          # Z coordinate
          float(),
          # A type of primitive object
          :point | :vector
        }

  @doc """
  Returns X coordinate of a object inside Tstore.
  """
  @spec x(__MODULE__.t()) :: float()
  def x({coordinate, _y, _z, _type}), do: coordinate

  @doc """
  Returns Y coordinate of a object inside Tstore.
  """
  @spec y(__MODULE__.t()) :: float()
  def y({_x, coordinate, _z, _type}), do: coordinate

  @doc """
  Returns Z coordinate of a object inside Tstore.
  """
  @spec z(__MODULE__.t()) :: float()
  def z({_x, _y, coordinate, _type}), do: coordinate
end

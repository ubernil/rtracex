defmodule Rtracex.Math.Tstore do
  @moduledoc """
  An internal representation of primitive objects such as point an vector.
  """
  alias Rtracex.Math.Float

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

  defp type({_x, _y, _z, type}), do: type

  @doc """
  Compares two Tstores for equality, consideres that coordinates can be almost equal as floats.
  In case of difference in coordinates is less than predifined machine epsilone returns true.
  """
  @spec eq?(__MODULE__.t(), __MODULE__.t()) :: boolean()
  def eq?(tstore1, tstore2) do
    type(tstore1) == type(tstore2) and
      Float.eq?(x(tstore1), x(tstore2)) and
      Float.eq?(y(tstore1), y(tstore2)) and
      Float.eq?(z(tstore1), z(tstore2))
  end
end

defmodule NifSorter do
  @moduledoc """
  NIF replacement for Enum.sort/1 for typed list of strings/numbers
  """
  @on_load :load_nifs
  @type supported_type :: String.t | integer | float

  @doc false
  def load_nifs do
    :ok = :erlang.load_nif('./priv/nif_sorter', 0)
  end


  @doc """
  Sort typed list of strings alphabetically in ascending order

  ## Examples
      iex> NifSorter.str_sort(["xir", "i", "el"])
      ["el", "i", "xir"]
      iex> NifSorter.str_sort(["aaa", 123])
      (ArgumentError) argument error
  """
  @spec str_sort([String.t]) :: [String.t]
  def str_sort(_) do
    raise "NIF str_sort/1 not implemented"
  end


  @doc """
  Sort typed list of integers in ascending order

  Works for integers in range `-9223372036854775808..9223372036854775807`

  ## Examples
      iex> NifSorter.int_sort([2, 3, 1])
      [1, 2, 3]
      iex> NifSorter.int_sort([2, 1.14])
      (ArgumentError) argument error
  """
  @spec int_sort([integer]) :: [integer]
  def int_sort(_) do
    raise "NIF int_sort/1 not implemented"
  end


  @doc """
  Sort typed list of floats in ascending order

  ## Examples
      iex> NifSorter.float_sort([2.31, 2.07, 1.2, -10.4])
      [-10.4, 1.2, 2.07, 2.31]
      iex> NifSorter.int_sort([2, 1.14])
      (ArgumentError) argument error
  """
  @spec float_sort([float]) :: [float]
  def float_sort(_) do
    raise "NIF float_sort/1 not implemented"
  end


  @doc """
  Sort typed list of strings/integers/floats in ascending order

  This methods just auto-detects list type by first item.
  List still should be strictly typed.

  ## Examples
      iex> NifSorter.sort(["xir", "i", "el"])
      ["el", "i", "xir"]
      iex> NifSorter.sort([2, 3, 1])
      [1, 2, 3]
      iex> NifSorter.sort([2.31, 2.07, 1.2, -10.4])
      [-10.4, 1.2, 2.07, 2.31]
      iex> NifSorter.sort([1, 2.2])
      (ArgumentError) argument error
  """
  @spec sort([supported_type]) :: [supported_type]
  def sort(_) do
    raise "NIF sort/1 not implemented"
  end
  
end

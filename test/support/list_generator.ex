defmodule ListGenerator do

  @eng_alphabet  "abcdefghijklmnopqrstuvwxyz" <>
                 "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  @rus_alphabet  "абвгдеёжзийклмнопрстуфхцчшщъыьэюя" <>
                 "АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ"
  @digits        "0123456789"
  @special_chars "_.,-/"

  def make_str_list(size) do
    1..size
    |> Enum.map(fn _ -> make_str() end)
  end

  def make_int_list(size) do
    1..size
    |> Enum.map(fn _ -> make_int() end)
  end

  def make_float_list(size) do
    1..size
    |> Enum.map(fn _ -> make_float() end)
  end

  def make_float() do
    :rand.uniform(100_000) / :rand.uniform(1_000)
  end

  def make_int() do
    :rand.uniform(10_000)
  end

  def make_str() do
    words = :rand.uniform(3)
    1..words
    |> Enum.map_join(" ", fn _ -> make_word() end)
  end

  def make_word() do
    length = :rand.uniform(10) + 3
    alphabet = :rand.uniform(3) |> choose_alphabet()
    make_word(alphabet, length)
  end

  defp choose_alphabet(1), do: @eng_alphabet <> @special_chars <> @digits
  defp choose_alphabet(2), do: @rus_alphabet <> @special_chars <> @digits
  defp choose_alphabet(3), do: @digits

  defp make_word(alphabet, length) when length > 0 do
    l = String.length(alphabet)
    1..length
    |> Enum.map_join(fn _ -> String.at(alphabet, :rand.uniform(l) - 1) end)
  end
  defp make_word(_alphabet, _length), do: ""

end
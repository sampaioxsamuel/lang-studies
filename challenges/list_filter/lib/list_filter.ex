defmodule ListFilter do
  require Integer

  def call([]), do: 0
  def call(list), do: count_odd_numbers(list)

  defp count_odd_numbers(list) do
    list
    |> Enum.filter(fn x -> Integer.parse(x) != :error end)
    |> Enum.map(fn x -> String.to_integer(x) end)
    |> Enum.count(fn x -> Integer.is_odd(x) end)
  end

  # defp is_number_valid(string) do
  #   if Integer.parse(string) != :error do
  #     string
  #   end
  # end

  # defp remove_non_numbers(list) do
  #   Enum.filter(list, fn element -> is_number_valid(element) end)
  # end

  # defp list_string_to_number(list) do
  #   Enum.map(list, fn x -> String.to_integer(x) end)
  # end

  # defp count_odd_numbers(list) do
  #   remove_strings = remove_non_numbers(list)
  #   numbers = list_string_to_number(remove_strings)

  #   Enum.count(numbers, fn element -> Integer.is_odd(element) end)
  # end
end

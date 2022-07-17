# Given a list return the length of it using recursion
# Ex: [1,2,3,4] -> 4

defmodule ListLength do
  def call(list), do: list_length(list, 0)

  defp list_length([], value), do: value

  defp list_length([_ | tail], value) do
    list_length(tail, value + 1)
  end
end

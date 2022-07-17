# if the list is empty will just return the acc
# if not will increment the acc and call sum again with the rest of the list

defmodule SumList do
  def call(list), do: sum(list, 0)
  # def call(list) do
  #   sum(list, 0)
  # end

  defp sum([], acc), do: acc

  defp sum([head | rest], acc) do
    acc = acc + head
    sum(rest, acc)
  end
end

defmodule MultiplyList do
  def main(list), do: multi(list, 1)

  defp multi([], acc) do
    acc
  end

  defp multi(list, acc) do
    [head | tail] = list

    multi(tail, acc * head)
  end
end

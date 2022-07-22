defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "return correct number of odd numbers" do
      list1 = ["1", "3", "6", "43", "banana", "6", "abc"]
      list2 = ["3", "banana", "6", "abacaxi"]

      assert ListFilter.call(list1) == 3
      assert ListFilter.call(list2) == 1
      assert ListFilter.call([]) == 0
    end
  end
end

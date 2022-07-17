defmodule ListLengthTest do
  use ExUnit.Case

  describe "call/1" do
    test "count list elements" do
      list1 = [1, 2, 3, 4]
      list2 = [1, 2]
      list3 = [6, 7, 8, 9, 20, 10, 11, 12]

      assert ListLength.call(list1) == 4
      assert ListLength.call(list2) == 2
      assert ListLength.call(list3) == 8
    end

    test "passing an empty list" do
      list = []

      assert ListLength.call(list) == 0
    end
  end
end

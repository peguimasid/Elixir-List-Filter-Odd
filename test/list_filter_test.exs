defmodule ListFilterTest do
  use ExUnit.Case

  describe "call\1" do
    test "if list is ['1', '3', '6', '43', 'banana', '6', 'abc'] should return 3" do
      result = ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"])
      expected_result = 3

      assert result == expected_result
    end

    test "if list is ['2', '3', '6', '42', 'lalal', '1', 'abc'] should return 2" do
      result = ListFilter.call(["2", "3", "6", "42", "lalal", "1", "abc"])
      expected_result = 2

      assert result == expected_result
    end

    test "if list is ['banana', 'abc'] should return 0" do
      result = ListFilter.call(["banana", "abc"])
      expected_result = 0

      assert result == expected_result
    end

    test "if list is ['1', '3', '6', '43', '59', '54', '90'] should return 4" do
      result = ListFilter.call(["1", "3", "6", "43", "59", "54", "90"])
      expected_result = 4

      assert result == expected_result
    end
  end
end

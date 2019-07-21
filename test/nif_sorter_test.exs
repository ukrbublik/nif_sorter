defmodule NifSorterTest do
  use ExUnit.Case
  import ListGenerator

  describe ".str_sort" do
    test "works on ascii strings" do
      list = ["bbb", "aaaa"]
      assert NifSorter.str_sort(list) == Enum.sort(list)
    end

    test "works on unicode strings" do
      list = ["bbb", "привет", "мир", "aaaa"]
      assert NifSorter.str_sort(list) == Enum.sort(list)
    end

    test "works on generated strings" do
      list = make_str_list(1_000)
      assert NifSorter.str_sort(list) == Enum.sort(list)
    end

    test "works on empty list" do
      list = []
      assert NifSorter.str_sort(list) == Enum.sort(list)
    end

    test "raises argument error if it's not list" do
      assert_raise ArgumentError, fn -> NifSorter.str_sort(123) end
      assert_raise ArgumentError, fn -> NifSorter.str_sort("string") end
      assert_raise ArgumentError, fn -> NifSorter.str_sort('abc') end
      assert_raise ArgumentError, fn -> NifSorter.str_sort(nil) end
      assert_raise ArgumentError, fn -> NifSorter.str_sort(:tuple) end
    end

    test "raises argument error if it's not typed list" do
      assert_raise ArgumentError, fn -> NifSorter.str_sort(["aaa", 123]) end
      assert_raise ArgumentError, fn -> NifSorter.str_sort(["aaa", nil]) end
    end
  end

  describe ".int_sort" do
    test "works on ints" do
      list = [1, 5, 2, -2]
      assert NifSorter.int_sort(list) == Enum.sort(list)
    end

    test "works on generated ints" do
      list = make_int_list(1_000)
      assert NifSorter.int_sort(list) == Enum.sort(list)
    end

    test "works on big ints, not not too big" do
      list = [1, -1, 9223372036854775807, -9223372036854775808]
      assert NifSorter.int_sort(list) == Enum.sort(list)
      assert_raise ArgumentError, fn -> NifSorter.int_sort([9223372036854775808]) end
      assert_raise ArgumentError, fn -> NifSorter.int_sort([-9223372036854775809]) end
    end

    test "raises argument error if not all items are integers" do
      assert_raise ArgumentError, fn -> NifSorter.int_sort([123, 123.1]) end
      assert_raise ArgumentError, fn -> NifSorter.int_sort([123, 123.0]) end
    end
  end

  describe ".float_sort" do
    test "works on floats" do
      list = [1.2, 5.93, 2.0, -2.14]
      assert NifSorter.float_sort(list) == Enum.sort(list)
    end

    test "works on generated floats" do
      list = make_float_list(1_000)
      assert NifSorter.float_sort(list) == Enum.sort(list)
    end

    test "raises argument error if not all items are floats" do
      assert_raise ArgumentError, fn -> NifSorter.int_sort([123, 123.1]) end
    end
  end

  describe ".sort" do
    test "works on strings" do
      list = ["bbb", "привет", "мир", "aaaa"]
      assert NifSorter.sort(list) == Enum.sort(list)
    end
    test "works on floats" do
      list = [1.2, 5.93, 2.0, -2.14]
      assert NifSorter.sort(list) == Enum.sort(list)
    end
    test "works on ints" do
      list = [1, 5, 2, -2]
      assert NifSorter.sort(list) == Enum.sort(list)
    end

    test "not works if list is not strictly typed" do
      assert_raise ArgumentError, fn -> NifSorter.str_sort(["aaa", 123]) end
    end
  end

end

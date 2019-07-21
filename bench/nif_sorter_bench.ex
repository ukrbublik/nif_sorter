defmodule NifSorterBench do
  import ListGenerator

  def run(["fast"]), do: quick_run()
  def run(["markdown"]), do: long_run(true)
  def run(_), do: long_run()

  def long_run(with_md \\ false) do
    long_run(:int_sort, with_md)
    long_run(:float_sort, with_md)
    long_run(:str_sort, with_md)
  end

  def long_run(:int_sort, with_md) do
    Benchee.run(
      %{
        "Enum.sort" => fn list -> Enum.sort(list) end,
        "NifSorter.int_sort" => fn list -> NifSorter.int_sort(list) end
      },
      inputs: %{
        "100 integers"  => make_int_list(100),
        "1K integers"   => make_int_list(1_000),
        "10K integers"  => make_int_list(10_000),
        "100K integers" => make_int_list(100_000),
      },
      formatters: formatters(with_md, "bench_results/int.md"),
      time: 1,
      memory_time: 0,
      warmup: 0.1
    )
  end

  def long_run(:float_sort, with_md) do
    Benchee.run(
      %{
        "Enum.sort" => fn list -> Enum.sort(list) end,
        "NifSorter.float_sort" => fn list -> NifSorter.float_sort(list) end
      },
      inputs: %{
        "100 floats"  => make_float_list(100),
        "1K floats"   => make_float_list(1_000),
        "10K floats"  => make_float_list(10_000),
        "100K floats" => make_float_list(100_000),
      },
      formatters: formatters(with_md, "bench_results/float.md"),
      time: 1,
      memory_time: 1,
      warmup: 0.1
    )
  end

  def long_run(:str_sort, with_md) do
    Benchee.run(
      %{
        "Enum.sort" => fn list -> Enum.sort(list) end,
        "NifSorter.str_sort" => fn list -> NifSorter.str_sort(list) end
      },
      inputs: %{
        "100 strings"  => make_str_list(100),
        "1K strings"   => make_str_list(1_000),
        "10K strings"  => make_str_list(10_000),
        "100K strings" => make_str_list(100_000),
      },
      formatters: formatters(with_md, "bench_results/str.md"),
      time: 1,
      memory_time: 1,
      warmup: 0.1
    )
  end

  defp formatters(with_md, md_file) do
    list = [
      Benchee.Formatters.Console
    ]
    case with_md do
      true -> 
        md = {Benchee.Formatters.Markdown, file: md_file}
        [ md | list]
      false -> list
    end
  end

  def quick_run() do
    IO.puts "____________________________"
    IO.puts "* int_sort"
    quick_run(:int_sort, 1_000)
    quick_run(:int_sort, 10_000)
    quick_run(:int_sort, 100_000)

    IO.puts "____________________________"
    IO.puts "* float_sort"
    quick_run(:float_sort, 1_000)
    quick_run(:float_sort, 10_000)
    quick_run(:float_sort, 100_000)

    IO.puts "____________________________"
    IO.puts "* str_sort"
    quick_run(:str_sort, 1_000)
    quick_run(:str_sort, 10_000)
    quick_run(:str_sort, 100_000)
  end

  def quick_run(:float_sort, list_size) do
    list = make_float_list(list_size)
    ex_time = measure fn -> Enum.sort(list) end
    nif_time = measure fn -> NifSorter.float_sort(list) end
    IO.puts " "
    IO.puts "Size:                 #{list_size}"
    IO.puts "Enum.sort:            #{ex_time |> ms} ms"
    IO.puts "NifSorter.float_sort: #{nif_time |> ms} ms"
  end

  def quick_run(:int_sort, list_size) do
    list = make_int_list(list_size)
    ex_time = measure fn -> Enum.sort(list) end
    nif_time = measure fn -> NifSorter.int_sort(list) end
    IO.puts " "
    IO.puts "Size:               #{list_size}"
    IO.puts "Enum.sort:          #{ex_time |> ms} ms"
    IO.puts "NifSorter.int_sort: #{nif_time |> ms} ms"
  end

  def quick_run(:str_sort, list_size) do
    list = make_str_list(list_size)
    ex_time = measure fn -> Enum.sort(list) end
    nif_time = measure fn -> NifSorter.str_sort(list) end
    IO.puts " "
    IO.puts "Size:               #{list_size}"
    IO.puts "Enum.sort:          #{ex_time |> ms} ms"
    IO.puts "NifSorter.str_sort: #{nif_time |> ms} ms"
  end

  def ms(secs) do
    ms = secs * 1_000
    decimals = cond do
      ms < 10 -> 1
      true    -> 0
    end
    :erlang.float_to_binary(ms, [decimals: decimals])
  end

  defp measure(function) do
    function
    |> :timer.tc
    |> elem(0)
    |> Kernel./(1_000_000)
  end

end

#####

NifSorterBench.run(System.argv)

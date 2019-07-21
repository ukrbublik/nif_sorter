# nif_sorter
[![CircleCI](https://circleci.com/gh/ukrbublik/nif_sorter.svg?style=svg)](https://circleci.com/gh/ukrbublik/nif_sorter)

NIF sort typed list of strings/integers/floats (with C++ `std::sort`)


### Installation
Add to `deps` in `mix.exs`:
```elixir
{:nif_sorter, "~> 0.2.0"}
```
Works on Elixir 1.7+


### Usage
```elixir
NifSorter.sort(["xir", "i", "el"])
# ["el", "i", "xir"]
NifSorter.sort([2, 3, 1])
# [1, 2, 3]
NifSorter.sort([2.31, 2.07, 1.2, -10.4])
# [-10.4, 1.2, 2.07, 2.31]

NifSorter.sort([1, 2.2])
# (ArgumentError) argument error
```
Restrictions:
- Works only on strictly typed lists. 
  Supported types: `string`, `integer`, `float`. 
  Can't mix types in list like `NifSorter.sort(["aa", 12, 1.33])`
- Sort by integers works for integers in range `-9223372036854775808..9223372036854775807`


### Performance
- See benchmarks for
  - [integers](bench_results/int.md)
  - [floats](bench_results/float.md)
  - [strings](bench_results/str.md)
- Memory usage is tens times more effective on any data.
- Sort list of numbers is 2-3x faster.
- Sort list of strings wins by speed on big data (~50% faster on 100K).


### Commands
- Interactive shell:
```sh
$ make cli
```
- Run benchmarks:
```sh
$ make bench
$ make bench/fast
```
- Run tests:
```sh
$ make test
```

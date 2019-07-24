# Benchmark

Benchmark run from 2019-07-23 23:14:15.108481Z UTC

## System

Benchmark suite executing on the following system:

<table style="width: 1%">
  <tr>
    <th style="width: 1%; white-space: nowrap">Operating System</th>
    <td>Linux</td>
  </tr><tr>
    <th style="white-space: nowrap">CPU Information</th>
    <td style="white-space: nowrap">Intel(R) Core(TM) i5-6500 CPU @ 3.20GHz</td>
  </tr><tr>
    <th style="white-space: nowrap">Number of Available Cores</th>
    <td style="white-space: nowrap">4</td>
  </tr><tr>
    <th style="white-space: nowrap">Available Memory</th>
    <td style="white-space: nowrap">15.55 GB</td>
  </tr><tr>
    <th style="white-space: nowrap">Elixir Version</th>
    <td style="white-space: nowrap">1.7.4</td>
  </tr><tr>
    <th style="white-space: nowrap">Erlang Version</th>
    <td style="white-space: nowrap">21.2</td>
  </tr>
</table>

## Configuration

Benchmark suite executing with the following configuration:

<table style="width: 1%">
  <tr>
    <th style="width: 1%">:time</th>
    <td style="white-space: nowrap">1 s</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">1</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">100 ms</td>
  </tr>
</table>

## Statistics



__Input: 100 integers__

Run Time
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">NifSorter.int_sort</td>
    <td style="white-space: nowrap; text-align: right">345.10 K</td>
    <td style="white-space: nowrap; text-align: right">2.90 μs</td>
    <td style="white-space: nowrap; text-align: right">±163.41%</td>
    <td style="white-space: nowrap; text-align: right">2.59 μs</td>
    <td style="white-space: nowrap; text-align: right">15.16 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">206.39 K</td>
    <td style="white-space: nowrap; text-align: right">4.85 μs</td>
    <td style="white-space: nowrap; text-align: right">±173.40%</td>
    <td style="white-space: nowrap; text-align: right">4.40 μs</td>
    <td style="white-space: nowrap; text-align: right">17.80 μs</td>
  </tr>
</table>

Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">NifSorter.int_sort</td>
    <td style="white-space: nowrap;text-align: right">345.10 K</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">206.39 K</td>
    <td style="white-space: nowrap; text-align: right">1.67x</td>
  </tr>
</table>


<hr/>

__Input: 1000 integers__

Run Time
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">NifSorter.int_sort</td>
    <td style="white-space: nowrap; text-align: right">25.82 K</td>
    <td style="white-space: nowrap; text-align: right">38.73 μs</td>
    <td style="white-space: nowrap; text-align: right">±28.04%</td>
    <td style="white-space: nowrap; text-align: right">35.03 μs</td>
    <td style="white-space: nowrap; text-align: right">80.13 μs</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">9.22 K</td>
    <td style="white-space: nowrap; text-align: right">108.52 μs</td>
    <td style="white-space: nowrap; text-align: right">±16.99%</td>
    <td style="white-space: nowrap; text-align: right">101.60 μs</td>
    <td style="white-space: nowrap; text-align: right">187.76 μs</td>
  </tr>
</table>

Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">NifSorter.int_sort</td>
    <td style="white-space: nowrap;text-align: right">25.82 K</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">9.22 K</td>
    <td style="white-space: nowrap; text-align: right">2.8x</td>
  </tr>
</table>


<hr/>

__Input: 10000 integers__

Run Time
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">NifSorter.int_sort</td>
    <td style="white-space: nowrap; text-align: right">1.11 K</td>
    <td style="white-space: nowrap; text-align: right">0.90 ms</td>
    <td style="white-space: nowrap; text-align: right">±33.45%</td>
    <td style="white-space: nowrap; text-align: right">0.83 ms</td>
    <td style="white-space: nowrap; text-align: right">1.62 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">0.64 K</td>
    <td style="white-space: nowrap; text-align: right">1.57 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.19%</td>
    <td style="white-space: nowrap; text-align: right">1.52 ms</td>
    <td style="white-space: nowrap; text-align: right">2.00 ms</td>
  </tr>
</table>

Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">NifSorter.int_sort</td>
    <td style="white-space: nowrap;text-align: right">1.11 K</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">0.64 K</td>
    <td style="white-space: nowrap; text-align: right">1.74x</td>
  </tr>
</table>


<hr/>

__Input: 100000 integers__

Run Time
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">NifSorter.int_sort</td>
    <td style="white-space: nowrap; text-align: right">97.69</td>
    <td style="white-space: nowrap; text-align: right">10.24 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.09%</td>
    <td style="white-space: nowrap; text-align: right">10.09 ms</td>
    <td style="white-space: nowrap; text-align: right">12.89 ms</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">46.22</td>
    <td style="white-space: nowrap; text-align: right">21.63 ms</td>
    <td style="white-space: nowrap; text-align: right">±11.32%</td>
    <td style="white-space: nowrap; text-align: right">20.45 ms</td>
    <td style="white-space: nowrap; text-align: right">30.19 ms</td>
  </tr>
</table>

Comparison
<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">NifSorter.int_sort</td>
    <td style="white-space: nowrap;text-align: right">97.69</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="white-space: nowrap">Enum.sort</td>
    <td style="white-space: nowrap; text-align: right">46.22</td>
    <td style="white-space: nowrap; text-align: right">2.11x</td>
  </tr>
</table>


<hr/>

